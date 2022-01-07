
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nfc_dev {int dummy; } ;
struct nci_dev {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* disable_se ) (struct nci_dev*,int ) ;} ;


 struct nci_dev* nfc_get_drvdata (struct nfc_dev*) ;
 int stub1 (struct nci_dev*,int ) ;

__attribute__((used)) static int nci_disable_se(struct nfc_dev *nfc_dev, u32 se_idx)
{
 struct nci_dev *ndev = nfc_get_drvdata(nfc_dev);

 if (ndev->ops->disable_se)
  return ndev->ops->disable_se(ndev, se_idx);

 return 0;
}
