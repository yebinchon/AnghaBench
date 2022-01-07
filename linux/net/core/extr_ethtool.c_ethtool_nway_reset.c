
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {TYPE_1__* ethtool_ops; } ;
struct TYPE_2__ {int (* nway_reset ) (struct net_device*) ;} ;


 int EOPNOTSUPP ;
 int stub1 (struct net_device*) ;

__attribute__((used)) static int ethtool_nway_reset(struct net_device *dev)
{
 if (!dev->ethtool_ops->nway_reset)
  return -EOPNOTSUPP;

 return dev->ethtool_ops->nway_reset(dev);
}
