
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfc_dev {int fw_download_in_progress; int dev; TYPE_1__* ops; scalar_t__ dev_up; } ;
struct TYPE_2__ {int (* fw_download ) (struct nfc_dev*,char const*) ;} ;


 int EBUSY ;
 int ENODEV ;
 int EOPNOTSUPP ;
 int dev_name (int *) ;
 int device_is_registered (int *) ;
 int device_lock (int *) ;
 int device_unlock (int *) ;
 int pr_debug (char*,int ,char const*) ;
 int stub1 (struct nfc_dev*,char const*) ;

int nfc_fw_download(struct nfc_dev *dev, const char *firmware_name)
{
 int rc = 0;

 pr_debug("%s do firmware %s\n", dev_name(&dev->dev), firmware_name);

 device_lock(&dev->dev);

 if (!device_is_registered(&dev->dev)) {
  rc = -ENODEV;
  goto error;
 }

 if (dev->dev_up) {
  rc = -EBUSY;
  goto error;
 }

 if (!dev->ops->fw_download) {
  rc = -EOPNOTSUPP;
  goto error;
 }

 dev->fw_download_in_progress = 1;
 rc = dev->ops->fw_download(dev, firmware_name);
 if (rc)
  dev->fw_download_in_progress = 0;

error:
 device_unlock(&dev->dev);
 return rc;
}
