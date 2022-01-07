
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;


 int dev_forward_skb (struct net_device*,struct sk_buff*) ;

__attribute__((used)) static inline int __bpf_rx_skb(struct net_device *dev, struct sk_buff *skb)
{
 return dev_forward_skb(dev, skb);
}
