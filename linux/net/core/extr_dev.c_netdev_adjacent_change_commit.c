
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int netdev_adjacent_dev_enable (struct net_device*,struct net_device*) ;
 int netdev_upper_dev_unlink (struct net_device*,struct net_device*) ;

void netdev_adjacent_change_commit(struct net_device *old_dev,
       struct net_device *new_dev,
       struct net_device *dev)
{
 if (!new_dev || !old_dev)
  return;

 if (new_dev == old_dev)
  return;

 netdev_adjacent_dev_enable(dev, old_dev);
 netdev_upper_dev_unlink(old_dev, dev);
}
