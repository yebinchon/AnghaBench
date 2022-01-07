
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfc_target {int dummy; } ;
struct nfc_hci_dev {TYPE_1__* ops; } ;
struct nfc_dev {int dummy; } ;
struct TYPE_2__ {int (* check_presence ) (struct nfc_hci_dev*,struct nfc_target*) ;} ;


 struct nfc_hci_dev* nfc_get_drvdata (struct nfc_dev*) ;
 int stub1 (struct nfc_hci_dev*,struct nfc_target*) ;

__attribute__((used)) static int hci_check_presence(struct nfc_dev *nfc_dev,
         struct nfc_target *target)
{
 struct nfc_hci_dev *hdev = nfc_get_drvdata(nfc_dev);

 if (!hdev->ops->check_presence)
  return 0;

 return hdev->ops->check_presence(hdev, target);
}
