
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int wanted_features; int features; } ;


 int NETIF_F_GRO_HW ;
 int netdev_WARN (struct net_device*,char*) ;
 int netdev_update_features (struct net_device*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void dev_disable_gro_hw(struct net_device *dev)
{
 dev->wanted_features &= ~NETIF_F_GRO_HW;
 netdev_update_features(dev);

 if (unlikely(dev->features & NETIF_F_GRO_HW))
  netdev_WARN(dev, "failed to disable GRO_HW!\n");
}
