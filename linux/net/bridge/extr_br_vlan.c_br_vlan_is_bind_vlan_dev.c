
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 int VLAN_FLAG_BRIDGE_BINDING ;
 scalar_t__ is_vlan_dev (struct net_device const*) ;
 TYPE_1__* vlan_dev_priv (struct net_device const*) ;

__attribute__((used)) static int br_vlan_is_bind_vlan_dev(const struct net_device *dev)
{
 return is_vlan_dev(dev) &&
  !!(vlan_dev_priv(dev)->flags & VLAN_FLAG_BRIDGE_BINDING);
}
