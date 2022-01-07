
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {struct sk_buff* next; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;


 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int dev_xmit_complete (int) ;
 scalar_t__ netif_tx_queue_stopped (struct netdev_queue*) ;
 int skb_mark_not_on_list (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;
 int xmit_one (struct sk_buff*,struct net_device*,struct netdev_queue*,int ) ;

struct sk_buff *dev_hard_start_xmit(struct sk_buff *first, struct net_device *dev,
        struct netdev_queue *txq, int *ret)
{
 struct sk_buff *skb = first;
 int rc = NETDEV_TX_OK;

 while (skb) {
  struct sk_buff *next = skb->next;

  skb_mark_not_on_list(skb);
  rc = xmit_one(skb, dev, txq, next != ((void*)0));
  if (unlikely(!dev_xmit_complete(rc))) {
   skb->next = next;
   goto out;
  }

  skb = next;
  if (netif_tx_queue_stopped(txq) && skb) {
   rc = NETDEV_TX_BUSY;
   break;
  }
 }

out:
 *ret = rc;
 return skb;
}
