
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfc_dev {int dev_up; int dev; TYPE_1__* ops; scalar_t__ active_target; scalar_t__ polling; } ;
struct TYPE_2__ {int (* dev_down ) (struct nfc_dev*) ;} ;


 int EALREADY ;
 int EBUSY ;
 int ENODEV ;
 int dev_name (int *) ;
 int device_is_registered (int *) ;
 int device_lock (int *) ;
 int device_unlock (int *) ;
 int pr_debug (char*,int ) ;
 int stub1 (struct nfc_dev*) ;

int nfc_dev_down(struct nfc_dev *dev)
{
 int rc = 0;

 pr_debug("dev_name=%s\n", dev_name(&dev->dev));

 device_lock(&dev->dev);

 if (!device_is_registered(&dev->dev)) {
  rc = -ENODEV;
  goto error;
 }

 if (!dev->dev_up) {
  rc = -EALREADY;
  goto error;
 }

 if (dev->polling || dev->active_target) {
  rc = -EBUSY;
  goto error;
 }

 if (dev->ops->dev_down)
  dev->ops->dev_down(dev);

 dev->dev_up = 0;

error:
 device_unlock(&dev->dev);
 return rc;
}
