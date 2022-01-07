
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfc_dev {int shutting_down; int dev; int check_pres_work; int check_pres_timer; TYPE_1__* ops; scalar_t__ rfkill; } ;
struct TYPE_2__ {scalar_t__ check_presence; } ;


 int cancel_work_sync (int *) ;
 int del_timer_sync (int *) ;
 int dev_name (int *) ;
 int device_del (int *) ;
 int device_lock (int *) ;
 int device_unlock (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nfc_devlist_generation ;
 int nfc_devlist_mutex ;
 int nfc_genl_device_removed (struct nfc_dev*) ;
 int nfc_llcp_unregister_device (struct nfc_dev*) ;
 int pr_debug (char*,int ) ;
 int rfkill_destroy (scalar_t__) ;
 int rfkill_unregister (scalar_t__) ;

void nfc_unregister_device(struct nfc_dev *dev)
{
 int rc;

 pr_debug("dev_name=%s\n", dev_name(&dev->dev));

 if (dev->rfkill) {
  rfkill_unregister(dev->rfkill);
  rfkill_destroy(dev->rfkill);
 }

 if (dev->ops->check_presence) {
  device_lock(&dev->dev);
  dev->shutting_down = 1;
  device_unlock(&dev->dev);
  del_timer_sync(&dev->check_pres_timer);
  cancel_work_sync(&dev->check_pres_work);
 }

 rc = nfc_genl_device_removed(dev);
 if (rc)
  pr_debug("The userspace won't be notified that the device %s "
    "was removed\n", dev_name(&dev->dev));

 nfc_llcp_unregister_device(dev);

 mutex_lock(&nfc_devlist_mutex);
 nfc_devlist_generation++;
 device_del(&dev->dev);
 mutex_unlock(&nfc_devlist_mutex);
}
