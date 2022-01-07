
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nfc_se {scalar_t__ state; } ;
struct nfc_dev {int dev; TYPE_1__* ops; int dev_up; } ;
struct TYPE_2__ {int (* disable_se ) (struct nfc_dev*,int ) ;int enable_se; } ;


 int EALREADY ;
 int EINVAL ;
 int ENODEV ;
 int EOPNOTSUPP ;
 scalar_t__ NFC_SE_DISABLED ;
 int dev_name (int *) ;
 int device_is_registered (int *) ;
 int device_lock (int *) ;
 int device_unlock (int *) ;
 struct nfc_se* nfc_find_se (struct nfc_dev*,int ) ;
 int pr_debug (char*,int ,int ) ;
 int stub1 (struct nfc_dev*,int ) ;

int nfc_disable_se(struct nfc_dev *dev, u32 se_idx)
{
 struct nfc_se *se;
 int rc;

 pr_debug("%s se index %d\n", dev_name(&dev->dev), se_idx);

 device_lock(&dev->dev);

 if (!device_is_registered(&dev->dev)) {
  rc = -ENODEV;
  goto error;
 }

 if (!dev->dev_up) {
  rc = -ENODEV;
  goto error;
 }

 if (!dev->ops->enable_se || !dev->ops->disable_se) {
  rc = -EOPNOTSUPP;
  goto error;
 }

 se = nfc_find_se(dev, se_idx);
 if (!se) {
  rc = -EINVAL;
  goto error;
 }

 if (se->state == NFC_SE_DISABLED) {
  rc = -EALREADY;
  goto error;
 }

 rc = dev->ops->disable_se(dev, se_idx);
 if (rc >= 0)
  se->state = NFC_SE_DISABLED;

error:
 device_unlock(&dev->dev);
 return rc;
}
