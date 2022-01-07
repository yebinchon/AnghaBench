
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int dev_net (struct net_device*) ;
 int nd_tbl ;
 int neigh_ifdown (int *,struct net_device*) ;
 int rt6_sync_down_dev (struct net_device*,unsigned long) ;
 int rt6_uncached_list_flush_dev (int ,struct net_device*) ;

void rt6_disable_ip(struct net_device *dev, unsigned long event)
{
 rt6_sync_down_dev(dev, event);
 rt6_uncached_list_flush_dev(dev_net(dev), dev);
 neigh_ifdown(&nd_tbl, dev);
}
