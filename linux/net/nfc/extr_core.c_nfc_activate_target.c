
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nfc_target {int dummy; } ;
struct nfc_dev {int dev; int check_pres_timer; int shutting_down; TYPE_1__* ops; int rf_mode; struct nfc_target* active_target; } ;
struct TYPE_2__ {int (* activate_target ) (struct nfc_dev*,struct nfc_target*,int ) ;scalar_t__ check_presence; } ;


 int EBUSY ;
 int ENODEV ;
 int ENOTCONN ;
 int NFC_CHECK_PRES_FREQ_MS ;
 int NFC_RF_INITIATOR ;
 int dev_name (int *) ;
 int device_is_registered (int *) ;
 int device_lock (int *) ;
 int device_unlock (int *) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 struct nfc_target* nfc_find_target (struct nfc_dev*,int ) ;
 int pr_debug (char*,int ,int ,int ) ;
 int stub1 (struct nfc_dev*,struct nfc_target*,int ) ;

int nfc_activate_target(struct nfc_dev *dev, u32 target_idx, u32 protocol)
{
 int rc;
 struct nfc_target *target;

 pr_debug("dev_name=%s target_idx=%u protocol=%u\n",
   dev_name(&dev->dev), target_idx, protocol);

 device_lock(&dev->dev);

 if (!device_is_registered(&dev->dev)) {
  rc = -ENODEV;
  goto error;
 }

 if (dev->active_target) {
  rc = -EBUSY;
  goto error;
 }

 target = nfc_find_target(dev, target_idx);
 if (target == ((void*)0)) {
  rc = -ENOTCONN;
  goto error;
 }

 rc = dev->ops->activate_target(dev, target, protocol);
 if (!rc) {
  dev->active_target = target;
  dev->rf_mode = NFC_RF_INITIATOR;

  if (dev->ops->check_presence && !dev->shutting_down)
   mod_timer(&dev->check_pres_timer, jiffies +
      msecs_to_jiffies(NFC_CHECK_PRES_FREQ_MS));
 }

error:
 device_unlock(&dev->dev);
 return rc;
}
