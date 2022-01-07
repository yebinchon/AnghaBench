
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct net_device {scalar_t__ num_tc; } ;


 int EINVAL ;
 scalar_t__ TC_MAX_QUEUE ;
 int netdev_unbind_all_sb_channels (struct net_device*) ;
 int netif_reset_xps_queues_gt (struct net_device*,int ) ;

int netdev_set_num_tc(struct net_device *dev, u8 num_tc)
{
 if (num_tc > TC_MAX_QUEUE)
  return -EINVAL;




 netdev_unbind_all_sb_channels(dev);

 dev->num_tc = num_tc;
 return 0;
}
