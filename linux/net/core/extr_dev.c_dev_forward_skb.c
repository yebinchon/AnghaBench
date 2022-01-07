
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;


 scalar_t__ __dev_forward_skb (struct net_device*,struct sk_buff*) ;
 int netif_rx_internal (struct sk_buff*) ;

int dev_forward_skb(struct net_device *dev, struct sk_buff *skb)
{
 return __dev_forward_skb(dev, skb) ?: netif_rx_internal(skb);
}
