
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dummy; } ;
struct net_bridge_vlan_group {int dummy; } ;
struct net_bridge_port {int dummy; } ;


 int EINVAL ;
 int br_get_pvid (struct net_bridge_vlan_group*) ;
 struct net_bridge_vlan_group* br_vlan_group (int ) ;
 struct net_bridge_vlan_group* nbp_vlan_group (struct net_bridge_port*) ;
 int netdev_priv (struct net_device const*) ;
 scalar_t__ netif_is_bridge_master (struct net_device const*) ;

__attribute__((used)) static int __br_vlan_get_pvid(const struct net_device *dev,
         struct net_bridge_port *p, u16 *p_pvid)
{
 struct net_bridge_vlan_group *vg;

 if (p)
  vg = nbp_vlan_group(p);
 else if (netif_is_bridge_master(dev))
  vg = br_vlan_group(netdev_priv(dev));
 else
  return -EINVAL;

 *p_pvid = br_get_pvid(vg);
 return 0;
}
