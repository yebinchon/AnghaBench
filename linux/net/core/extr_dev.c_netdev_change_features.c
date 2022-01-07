
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int __netdev_update_features (struct net_device*) ;
 int netdev_features_change (struct net_device*) ;

void netdev_change_features(struct net_device *dev)
{
 __netdev_update_features(dev);
 netdev_features_change(dev);
}
