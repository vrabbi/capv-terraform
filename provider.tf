provider "kubernetes-alpha" {
  config_path = "~/.kube/config"
  server_side_planning = true
}
provider "kubectl" {
  config_path = "~/.kube/config"
}
terraform {
  required_version = ">= 0.13"
  required_providers {
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = ">= 1.6.2"
    }
  }
}
