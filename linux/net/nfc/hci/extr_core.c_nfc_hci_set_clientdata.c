
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfc_hci_dev {void* clientdata; } ;



void nfc_hci_set_clientdata(struct nfc_hci_dev *hdev, void *clientdata)
{
 hdev->clientdata = clientdata;
}
