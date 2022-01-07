
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {struct ethtool_ops const* ethtool_ops; } ;
struct ethtool_ops {int dummy; } ;


 struct ethtool_ops const default_ethtool_ops ;

void netdev_set_default_ethtool_ops(struct net_device *dev,
        const struct ethtool_ops *ops)
{
 if (dev->ethtool_ops == &default_ethtool_ops)
  dev->ethtool_ops = ops;
}
