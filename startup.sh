#!/bin/bash

cd reference_implementations/gcp/architectures/online/

terraform init -var-file=../terraform.tfvars
terraform plan -var-file=../terraform.tfvars
terraform apply -var-file=../terraform.tfvars

scp -i id_rsa.pub ml-api/startup.sh yevgeni.kissin@gmail.com@34.71.67.135