
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;



u16 dev_pick_tx_zero(struct net_device *dev, struct sk_buff *skb,
       struct net_device *sb_dev)
{
 return 0;
}
