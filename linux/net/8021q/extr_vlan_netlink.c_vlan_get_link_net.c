
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {struct net_device* real_dev; } ;


 struct net* dev_net (struct net_device*) ;
 TYPE_1__* vlan_dev_priv (struct net_device const*) ;

__attribute__((used)) static struct net *vlan_get_link_net(const struct net_device *dev)
{
 struct net_device *real_dev = vlan_dev_priv(dev)->real_dev;

 return dev_net(real_dev);
}
