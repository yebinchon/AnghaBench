
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_bridge_vlan_group {int dummy; } ;
struct net_bridge_vlan {int dummy; } ;
struct net_bridge_port {int dummy; } ;


 int ASSERT_RTNL () ;
 int ENOENT ;
 struct net_bridge_vlan* br_vlan_find (struct net_bridge_vlan_group*,int ) ;
 struct net_bridge_vlan_group* nbp_vlan_group (struct net_bridge_port*) ;
 int vlan_tunnel_info_del (struct net_bridge_vlan_group*,struct net_bridge_vlan*) ;

int nbp_vlan_tunnel_info_delete(struct net_bridge_port *port, u16 vid)
{
 struct net_bridge_vlan_group *vg;
 struct net_bridge_vlan *v;

 ASSERT_RTNL();

 vg = nbp_vlan_group(port);
 v = br_vlan_find(vg, vid);
 if (!v)
  return -ENOENT;

 vlan_tunnel_info_del(vg, v);

 return 0;
}
