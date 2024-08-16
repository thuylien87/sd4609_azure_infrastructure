terraform {
  required_version = ">=1.0"

  required_providers {
    azapi = {
      source  = "azure/azapi"
      version = "~>1.5"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
    time = {
      source  = "hashicorp/time"
      version = "0.9.1"
    }
  }
}

// provider "azurerm" {
//   features {}
// }

provider "azurerm" {
  subscription_id = "$env:ARM_SUBSCRIPTION_ID"
  client_id       = "$env:ARM_CLIENT_ID"
  client_secret   = "$env:ARM_CLIENT_SECRET"
  tenant_id       = "$env:ARM_TENANT_ID"
  features {}
}