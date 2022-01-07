
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfc_dev {int dummy; } ;
struct nci_dev {int dummy; } ;


 int nci_close_device (struct nci_dev*) ;
 struct nci_dev* nfc_get_drvdata (struct nfc_dev*) ;

__attribute__((used)) static int nci_dev_down(struct nfc_dev *nfc_dev)
{
 struct nci_dev *ndev = nfc_get_drvdata(nfc_dev);

 return nci_close_device(ndev);
}
