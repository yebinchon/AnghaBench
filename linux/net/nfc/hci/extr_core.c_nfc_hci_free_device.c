
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfc_hci_dev {int llc; int ndev; } ;


 int kfree (struct nfc_hci_dev*) ;
 int nfc_free_device (int ) ;
 int nfc_llc_free (int ) ;

void nfc_hci_free_device(struct nfc_hci_dev *hdev)
{
 nfc_free_device(hdev->ndev);
 nfc_llc_free(hdev->llc);
 kfree(hdev);
}
