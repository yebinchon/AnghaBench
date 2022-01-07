
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfc_dev {int dep_link_up; int dev; int rf_mode; int * active_target; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* dep_link_down ) (struct nfc_dev*) ;} ;


 int EALREADY ;
 int ENODEV ;
 int EOPNOTSUPP ;
 int NFC_RF_NONE ;
 int dev_name (int *) ;
 int device_is_registered (int *) ;
 int device_lock (int *) ;
 int device_unlock (int *) ;
 int nfc_genl_dep_link_down_event (struct nfc_dev*) ;
 int nfc_llcp_mac_is_down (struct nfc_dev*) ;
 int pr_debug (char*,int ) ;
 int stub1 (struct nfc_dev*) ;

int nfc_dep_link_down(struct nfc_dev *dev)
{
 int rc = 0;

 pr_debug("dev_name=%s\n", dev_name(&dev->dev));

 if (!dev->ops->dep_link_down)
  return -EOPNOTSUPP;

 device_lock(&dev->dev);

 if (!device_is_registered(&dev->dev)) {
  rc = -ENODEV;
  goto error;
 }

 if (dev->dep_link_up == 0) {
  rc = -EALREADY;
  goto error;
 }

 rc = dev->ops->dep_link_down(dev);
 if (!rc) {
  dev->dep_link_up = 0;
  dev->active_target = ((void*)0);
  dev->rf_mode = NFC_RF_NONE;
  nfc_llcp_mac_is_down(dev);
  nfc_genl_dep_link_down_event(dev);
 }

error:
 device_unlock(&dev->dev);

 return rc;
}
