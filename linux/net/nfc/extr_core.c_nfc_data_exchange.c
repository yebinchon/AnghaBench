
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sk_buff {int len; } ;
struct nfc_dev {scalar_t__ rf_mode; int dev; TYPE_1__* ops; int check_pres_timer; int shutting_down; TYPE_2__* active_target; } ;
typedef int data_exchange_cb_t ;
struct TYPE_4__ {scalar_t__ idx; } ;
struct TYPE_3__ {int (* im_transceive ) (struct nfc_dev*,TYPE_2__*,struct sk_buff*,int ,void*) ;int (* tm_send ) (struct nfc_dev*,struct sk_buff*) ;scalar_t__ check_presence; } ;


 int EADDRNOTAVAIL ;
 int ENODEV ;
 int ENOTCONN ;
 int NFC_CHECK_PRES_FREQ_MS ;
 scalar_t__ NFC_RF_INITIATOR ;
 scalar_t__ NFC_RF_TARGET ;
 int del_timer_sync (int *) ;
 int dev_name (int *) ;
 int device_is_registered (int *) ;
 int device_lock (int *) ;
 int device_unlock (int *) ;
 scalar_t__ jiffies ;
 int kfree_skb (struct sk_buff*) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int pr_debug (char*,int ,scalar_t__,int ) ;
 int stub1 (struct nfc_dev*,TYPE_2__*,struct sk_buff*,int ,void*) ;
 int stub2 (struct nfc_dev*,struct sk_buff*) ;

int nfc_data_exchange(struct nfc_dev *dev, u32 target_idx, struct sk_buff *skb,
        data_exchange_cb_t cb, void *cb_context)
{
 int rc;

 pr_debug("dev_name=%s target_idx=%u skb->len=%u\n",
   dev_name(&dev->dev), target_idx, skb->len);

 device_lock(&dev->dev);

 if (!device_is_registered(&dev->dev)) {
  rc = -ENODEV;
  kfree_skb(skb);
  goto error;
 }

 if (dev->rf_mode == NFC_RF_INITIATOR && dev->active_target != ((void*)0)) {
  if (dev->active_target->idx != target_idx) {
   rc = -EADDRNOTAVAIL;
   kfree_skb(skb);
   goto error;
  }

  if (dev->ops->check_presence)
   del_timer_sync(&dev->check_pres_timer);

  rc = dev->ops->im_transceive(dev, dev->active_target, skb, cb,
          cb_context);

  if (!rc && dev->ops->check_presence && !dev->shutting_down)
   mod_timer(&dev->check_pres_timer, jiffies +
      msecs_to_jiffies(NFC_CHECK_PRES_FREQ_MS));
 } else if (dev->rf_mode == NFC_RF_TARGET && dev->ops->tm_send != ((void*)0)) {
  rc = dev->ops->tm_send(dev, skb);
 } else {
  rc = -ENOTCONN;
  kfree_skb(skb);
  goto error;
 }


error:
 device_unlock(&dev->dev);
 return rc;
}
