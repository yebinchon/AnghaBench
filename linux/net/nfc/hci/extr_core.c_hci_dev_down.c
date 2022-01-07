
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfc_hci_dev {TYPE_1__* ops; int llc; } ;
struct nfc_dev {int dummy; } ;
struct TYPE_2__ {int (* close ) (struct nfc_hci_dev*) ;} ;


 struct nfc_hci_dev* nfc_get_drvdata (struct nfc_dev*) ;
 int nfc_hci_reset_pipes (struct nfc_hci_dev*) ;
 int nfc_llc_stop (int ) ;
 int stub1 (struct nfc_hci_dev*) ;

__attribute__((used)) static int hci_dev_down(struct nfc_dev *nfc_dev)
{
 struct nfc_hci_dev *hdev = nfc_get_drvdata(nfc_dev);

 nfc_llc_stop(hdev->llc);

 if (hdev->ops->close)
  hdev->ops->close(hdev);

 nfc_hci_reset_pipes(hdev);

 return 0;
}
