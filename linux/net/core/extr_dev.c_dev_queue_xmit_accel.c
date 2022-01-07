
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;


 int __dev_queue_xmit (struct sk_buff*,struct net_device*) ;

int dev_queue_xmit_accel(struct sk_buff *skb, struct net_device *sb_dev)
{
 return __dev_queue_xmit(skb, sb_dev);
}
