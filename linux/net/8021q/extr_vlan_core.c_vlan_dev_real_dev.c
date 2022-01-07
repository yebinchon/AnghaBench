
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef struct net_device const net_device ;
struct TYPE_2__ {struct net_device const* real_dev; } ;


 scalar_t__ is_vlan_dev (struct net_device const*) ;
 TYPE_1__* vlan_dev_priv (struct net_device const*) ;

struct net_device *vlan_dev_real_dev(const struct net_device *dev)
{
 struct net_device *ret = vlan_dev_priv(dev)->real_dev;

 while (is_vlan_dev(ret))
  ret = vlan_dev_priv(ret)->real_dev;

 return ret;
}
