
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_vlan_group {int tunnel_hash; } ;


 int rhashtable_destroy (int *) ;

void vlan_tunnel_deinit(struct net_bridge_vlan_group *vg)
{
 rhashtable_destroy(&vg->tunnel_hash);
}
