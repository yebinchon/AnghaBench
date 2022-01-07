
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfc_dev {int dummy; } ;
struct nci_dev {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* fw_download ) (struct nci_dev*,char const*) ;} ;


 int ENOTSUPP ;
 struct nci_dev* nfc_get_drvdata (struct nfc_dev*) ;
 int stub1 (struct nci_dev*,char const*) ;

__attribute__((used)) static int nci_fw_download(struct nfc_dev *nfc_dev, const char *firmware_name)
{
 struct nci_dev *ndev = nfc_get_drvdata(nfc_dev);

 if (!ndev->ops->fw_download)
  return -ENOTSUPP;

 return ndev->ops->fw_download(ndev, firmware_name);
}
