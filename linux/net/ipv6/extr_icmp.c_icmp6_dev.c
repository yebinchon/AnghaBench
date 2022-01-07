
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {struct net_device* dev; } ;
struct rt6_info {TYPE_1__* rt6i_idev; } ;
struct net_device {scalar_t__ ifindex; } ;
struct TYPE_2__ {struct net_device* dev; } ;


 scalar_t__ LOOPBACK_IFINDEX ;
 scalar_t__ netif_is_l3_master (struct net_device*) ;
 struct rt6_info* skb_rt6_info (struct sk_buff const*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct net_device *icmp6_dev(const struct sk_buff *skb)
{
 struct net_device *dev = skb->dev;






 if (unlikely(dev->ifindex == LOOPBACK_IFINDEX || netif_is_l3_master(skb->dev))) {
  const struct rt6_info *rt6 = skb_rt6_info(skb);

  if (rt6)
   dev = rt6->rt6i_idev->dev;
 }

 return dev;
}
