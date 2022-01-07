
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
typedef int netdev_tx_t ;


 int NETDEV_TX_OK ;
 int __ieee80211_subif_start_xmit (struct sk_buff*,struct net_device*,int ,int ) ;
 struct sk_buff* __skb_dequeue (struct sk_buff_head*) ;
 int __skb_queue_head_init (struct sk_buff_head*) ;
 int ieee80211_convert_to_unicast (struct sk_buff*,struct net_device*,struct sk_buff_head*) ;
 int ieee80211_multicast_to_unicast (struct sk_buff*,struct net_device*) ;
 scalar_t__ unlikely (int ) ;

netdev_tx_t ieee80211_subif_start_xmit(struct sk_buff *skb,
           struct net_device *dev)
{
 if (unlikely(ieee80211_multicast_to_unicast(skb, dev))) {
  struct sk_buff_head queue;

  __skb_queue_head_init(&queue);
  ieee80211_convert_to_unicast(skb, dev, &queue);
  while ((skb = __skb_dequeue(&queue)))
   __ieee80211_subif_start_xmit(skb, dev, 0, 0);
 } else {
  __ieee80211_subif_start_xmit(skb, dev, 0, 0);
 }

 return NETDEV_TX_OK;
}
