
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; int data; } ;
struct rfcomm_dlc {struct rfcomm_dev* owner; } ;
struct rfcomm_dev {int port; int pending; } ;


 int BT_DBG (char*,struct rfcomm_dlc*,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int skb_queue_empty (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int tty_flip_buffer_push (int *) ;
 int tty_insert_flip_string (int *,int ,int ) ;

__attribute__((used)) static void rfcomm_dev_data_ready(struct rfcomm_dlc *dlc, struct sk_buff *skb)
{
 struct rfcomm_dev *dev = dlc->owner;

 if (!dev) {
  kfree_skb(skb);
  return;
 }

 if (!skb_queue_empty(&dev->pending)) {
  skb_queue_tail(&dev->pending, skb);
  return;
 }

 BT_DBG("dlc %p len %d", dlc, skb->len);

 tty_insert_flip_string(&dev->port, skb->data, skb->len);
 tty_flip_buffer_push(&dev->port);

 kfree_skb(skb);
}
