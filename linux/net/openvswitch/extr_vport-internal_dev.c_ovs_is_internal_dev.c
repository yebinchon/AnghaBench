
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int * netdev_ops; } ;


 int internal_dev_netdev_ops ;

int ovs_is_internal_dev(const struct net_device *netdev)
{
 return netdev->netdev_ops == &internal_dev_netdev_ops;
}
