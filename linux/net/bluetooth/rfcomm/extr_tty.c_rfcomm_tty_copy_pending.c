
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; int data; } ;
struct rfcomm_dev {int port; int dlc; int pending; } ;


 int BT_DBG (char*,struct rfcomm_dev*) ;
 int kfree_skb (struct sk_buff*) ;
 int rfcomm_dlc_lock (int ) ;
 int rfcomm_dlc_unlock (int ) ;
 struct sk_buff* skb_dequeue (int *) ;
 int tty_flip_buffer_push (int *) ;
 scalar_t__ tty_insert_flip_string (int *,int ,int ) ;

__attribute__((used)) static void rfcomm_tty_copy_pending(struct rfcomm_dev *dev)
{
 struct sk_buff *skb;
 int inserted = 0;

 BT_DBG("dev %p", dev);

 rfcomm_dlc_lock(dev->dlc);

 while ((skb = skb_dequeue(&dev->pending))) {
  inserted += tty_insert_flip_string(&dev->port, skb->data,
    skb->len);
  kfree_skb(skb);
 }

 rfcomm_dlc_unlock(dev->dlc);

 if (inserted > 0)
  tty_flip_buffer_push(&dev->port);
}
