
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_vlan_group {int dummy; } ;
struct net_bridge_port {int dummy; } ;


 int ASSERT_RTNL () ;
 int __vlan_tunnel_info_flush (struct net_bridge_vlan_group*) ;
 struct net_bridge_vlan_group* nbp_vlan_group (struct net_bridge_port*) ;

void nbp_vlan_tunnel_info_flush(struct net_bridge_port *port)
{
 struct net_bridge_vlan_group *vg;

 ASSERT_RTNL();

 vg = nbp_vlan_group(port);
 __vlan_tunnel_info_flush(vg);
}
