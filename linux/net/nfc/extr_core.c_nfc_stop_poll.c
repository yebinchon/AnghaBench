
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfc_dev {int polling; int dev; int rf_mode; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* stop_poll ) (struct nfc_dev*) ;} ;


 int EINVAL ;
 int ENODEV ;
 int NFC_RF_NONE ;
 int dev_name (int *) ;
 int device_is_registered (int *) ;
 int device_lock (int *) ;
 int device_unlock (int *) ;
 int pr_debug (char*,int ) ;
 int stub1 (struct nfc_dev*) ;

int nfc_stop_poll(struct nfc_dev *dev)
{
 int rc = 0;

 pr_debug("dev_name=%s\n", dev_name(&dev->dev));

 device_lock(&dev->dev);

 if (!device_is_registered(&dev->dev)) {
  rc = -ENODEV;
  goto error;
 }

 if (!dev->polling) {
  rc = -EINVAL;
  goto error;
 }

 dev->ops->stop_poll(dev);
 dev->polling = 0;
 dev->rf_mode = NFC_RF_NONE;

error:
 device_unlock(&dev->dev);
 return rc;
}
