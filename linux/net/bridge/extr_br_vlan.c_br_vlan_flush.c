
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_vlan_group {int dummy; } ;
struct net_bridge {int vlgrp; } ;


 int ASSERT_RTNL () ;
 int RCU_INIT_POINTER (int ,int *) ;
 int __vlan_flush (struct net_bridge_vlan_group*) ;
 int __vlan_group_free (struct net_bridge_vlan_group*) ;
 struct net_bridge_vlan_group* br_vlan_group (struct net_bridge*) ;
 int synchronize_rcu () ;

void br_vlan_flush(struct net_bridge *br)
{
 struct net_bridge_vlan_group *vg;

 ASSERT_RTNL();

 vg = br_vlan_group(br);
 __vlan_flush(vg);
 RCU_INIT_POINTER(br->vlgrp, ((void*)0));
 synchronize_rcu();
 __vlan_group_free(vg);
}
