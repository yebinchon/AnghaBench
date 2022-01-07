
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int ifindex; } ;
struct TYPE_2__ {struct net_device* real_dev; } ;


 TYPE_1__* vlan_dev_priv (struct net_device const*) ;

__attribute__((used)) static int vlan_dev_get_iflink(const struct net_device *dev)
{
 struct net_device *real_dev = vlan_dev_priv(dev)->real_dev;

 return real_dev->ifindex;
}
