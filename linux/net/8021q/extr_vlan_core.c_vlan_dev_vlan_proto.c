
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
typedef int __be16 ;
struct TYPE_2__ {int vlan_proto; } ;


 TYPE_1__* vlan_dev_priv (struct net_device const*) ;

__be16 vlan_dev_vlan_proto(const struct net_device *dev)
{
 return vlan_dev_priv(dev)->vlan_proto;
}
