
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct net_bridge_vlan_group {int dummy; } ;
struct net_bridge_vlan {int dummy; } ;
struct net_bridge_port {int dummy; } ;


 int ASSERT_RTNL () ;
 int EINVAL ;
 int __vlan_tunnel_info_add (struct net_bridge_vlan_group*,struct net_bridge_vlan*,int ) ;
 struct net_bridge_vlan* br_vlan_find (struct net_bridge_vlan_group*,int ) ;
 struct net_bridge_vlan_group* nbp_vlan_group (struct net_bridge_port*) ;

int nbp_vlan_tunnel_info_add(struct net_bridge_port *port, u16 vid, u32 tun_id)
{
 struct net_bridge_vlan_group *vg;
 struct net_bridge_vlan *vlan;

 ASSERT_RTNL();

 vg = nbp_vlan_group(port);
 vlan = br_vlan_find(vg, vid);
 if (!vlan)
  return -EINVAL;

 return __vlan_tunnel_info_add(vg, vlan, tun_id);
}
