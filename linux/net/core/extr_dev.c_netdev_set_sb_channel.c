
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int num_tc; } ;


 int EINVAL ;
 int ENODEV ;
 int S16_MAX ;
 scalar_t__ netif_is_multiqueue (struct net_device*) ;

int netdev_set_sb_channel(struct net_device *dev, u16 channel)
{

 if (netif_is_multiqueue(dev))
  return -ENODEV;






 if (channel > S16_MAX)
  return -EINVAL;

 dev->num_tc = -channel;

 return 0;
}
