
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {unsigned int mtu; } ;
struct TYPE_2__ {struct net_device* real_dev; } ;


 int ERANGE ;
 scalar_t__ VLAN_HLEN ;
 scalar_t__ netif_reduces_vlan_mtu (struct net_device*) ;
 TYPE_1__* vlan_dev_priv (struct net_device*) ;

__attribute__((used)) static int vlan_dev_change_mtu(struct net_device *dev, int new_mtu)
{
 struct net_device *real_dev = vlan_dev_priv(dev)->real_dev;
 unsigned int max_mtu = real_dev->mtu;

 if (netif_reduces_vlan_mtu(real_dev))
  max_mtu -= VLAN_HLEN;
 if (max_mtu < new_mtu)
  return -ERANGE;

 dev->mtu = new_mtu;

 return 0;
}
