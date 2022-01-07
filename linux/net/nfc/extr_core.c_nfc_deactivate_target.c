
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct nfc_dev {int dev; TYPE_2__* active_target; TYPE_1__* ops; int check_pres_timer; } ;
struct TYPE_4__ {scalar_t__ idx; } ;
struct TYPE_3__ {int (* deactivate_target ) (struct nfc_dev*,TYPE_2__*,int ) ;scalar_t__ check_presence; } ;


 int ENODEV ;
 int ENOTCONN ;
 int del_timer_sync (int *) ;
 int dev_name (int *) ;
 int device_is_registered (int *) ;
 int device_lock (int *) ;
 int device_unlock (int *) ;
 int pr_debug (char*,int ,scalar_t__) ;
 int stub1 (struct nfc_dev*,TYPE_2__*,int ) ;

int nfc_deactivate_target(struct nfc_dev *dev, u32 target_idx, u8 mode)
{
 int rc = 0;

 pr_debug("dev_name=%s target_idx=%u\n",
   dev_name(&dev->dev), target_idx);

 device_lock(&dev->dev);

 if (!device_is_registered(&dev->dev)) {
  rc = -ENODEV;
  goto error;
 }

 if (dev->active_target == ((void*)0)) {
  rc = -ENOTCONN;
  goto error;
 }

 if (dev->active_target->idx != target_idx) {
  rc = -ENOTCONN;
  goto error;
 }

 if (dev->ops->check_presence)
  del_timer_sync(&dev->check_pres_timer);

 dev->ops->deactivate_target(dev, dev->active_target, mode);
 dev->active_target = ((void*)0);

error:
 device_unlock(&dev->dev);
 return rc;
}
