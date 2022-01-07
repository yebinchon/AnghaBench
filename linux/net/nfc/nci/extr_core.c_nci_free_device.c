
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nci_dev {int nfc_dev; } ;


 int kfree (struct nci_dev*) ;
 int nfc_free_device (int ) ;

void nci_free_device(struct nci_dev *ndev)
{
 nfc_free_device(ndev->nfc_dev);
 kfree(ndev);
}
