
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_vlan_group {int dummy; } ;
struct net_bridge_port {int vlgrp; } ;


 int ASSERT_RTNL () ;
 int RCU_INIT_POINTER (int ,int *) ;
 int __vlan_flush (struct net_bridge_vlan_group*) ;
 int __vlan_group_free (struct net_bridge_vlan_group*) ;
 struct net_bridge_vlan_group* nbp_vlan_group (struct net_bridge_port*) ;
 int synchronize_rcu () ;

void nbp_vlan_flush(struct net_bridge_port *port)
{
 struct net_bridge_vlan_group *vg;

 ASSERT_RTNL();

 vg = nbp_vlan_group(port);
 __vlan_flush(vg);
 RCU_INIT_POINTER(port->vlgrp, ((void*)0));
 synchronize_rcu();
 __vlan_group_free(vg);
}
