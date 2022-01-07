
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nfc_dev {int polling; int dev; int rf_mode; TYPE_1__* ops; int dev_up; } ;
struct TYPE_2__ {int (* start_poll ) (struct nfc_dev*,int ,int ) ;} ;


 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 int NFC_RF_NONE ;
 int dev_name (int *) ;
 int device_is_registered (int *) ;
 int device_lock (int *) ;
 int device_unlock (int *) ;
 int pr_debug (char*,int ,int ,int ) ;
 int stub1 (struct nfc_dev*,int ,int ) ;

int nfc_start_poll(struct nfc_dev *dev, u32 im_protocols, u32 tm_protocols)
{
 int rc;

 pr_debug("dev_name %s initiator protocols 0x%x target protocols 0x%x\n",
   dev_name(&dev->dev), im_protocols, tm_protocols);

 if (!im_protocols && !tm_protocols)
  return -EINVAL;

 device_lock(&dev->dev);

 if (!device_is_registered(&dev->dev)) {
  rc = -ENODEV;
  goto error;
 }

 if (!dev->dev_up) {
  rc = -ENODEV;
  goto error;
 }

 if (dev->polling) {
  rc = -EBUSY;
  goto error;
 }

 rc = dev->ops->start_poll(dev, im_protocols, tm_protocols);
 if (!rc) {
  dev->polling = 1;
  dev->rf_mode = NFC_RF_NONE;
 }

error:
 device_unlock(&dev->dev);
 return rc;
}
