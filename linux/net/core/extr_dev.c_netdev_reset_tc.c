
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int prio_tc_map; int tc_to_txq; scalar_t__ num_tc; } ;


 int memset (int ,int ,int) ;
 int netdev_unbind_all_sb_channels (struct net_device*) ;
 int netif_reset_xps_queues_gt (struct net_device*,int ) ;

void netdev_reset_tc(struct net_device *dev)
{



 netdev_unbind_all_sb_channels(dev);


 dev->num_tc = 0;
 memset(dev->tc_to_txq, 0, sizeof(dev->tc_to_txq));
 memset(dev->prio_tc_map, 0, sizeof(dev->prio_tc_map));
}
