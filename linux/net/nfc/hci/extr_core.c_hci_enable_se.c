
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nfc_hci_dev {TYPE_1__* ops; } ;
struct nfc_dev {int dummy; } ;
struct TYPE_2__ {int (* enable_se ) (struct nfc_hci_dev*,int ) ;} ;


 struct nfc_hci_dev* nfc_get_drvdata (struct nfc_dev*) ;
 int stub1 (struct nfc_hci_dev*,int ) ;

__attribute__((used)) static int hci_enable_se(struct nfc_dev *nfc_dev, u32 se_idx)
{
 struct nfc_hci_dev *hdev = nfc_get_drvdata(nfc_dev);

 if (hdev->ops->enable_se)
  return hdev->ops->enable_se(hdev, se_idx);

 return 0;
}
