variable "region" {}
 
variable "shared_credentials_file" {}

variable "profile" {}

variable "instance_type" {}

provider "aws" {
  region  = "${var.region}"
  shared_credentials_file = "${var.shared_credentials_file}"
  profile = "${var.profile}" 
}

resource "aws_instance" "web" {
  ami = "ami-06bcd1131b2f55803"
  instance_type = "${var.instance_type}"
  tags {
   Name = "terralab"
       }
    }

