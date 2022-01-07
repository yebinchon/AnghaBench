
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 scalar_t__ __netdev_update_features (struct net_device*) ;
 int netdev_features_change (struct net_device*) ;

void netdev_update_features(struct net_device *dev)
{
 if (__netdev_update_features(dev))
  netdev_features_change(dev);
}
