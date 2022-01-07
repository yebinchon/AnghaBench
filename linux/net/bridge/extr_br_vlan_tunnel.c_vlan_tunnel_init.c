
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_vlan_group {int tunnel_hash; } ;


 int br_vlan_tunnel_rht_params ;
 int rhashtable_init (int *,int *) ;

int vlan_tunnel_init(struct net_bridge_vlan_group *vg)
{
 return rhashtable_init(&vg->tunnel_hash, &br_vlan_tunnel_rht_params);
}
