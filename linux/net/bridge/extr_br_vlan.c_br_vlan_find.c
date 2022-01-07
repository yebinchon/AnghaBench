
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_bridge_vlan_group {int vlan_hash; } ;
struct net_bridge_vlan {int dummy; } ;


 struct net_bridge_vlan* br_vlan_lookup (int *,int ) ;

struct net_bridge_vlan *br_vlan_find(struct net_bridge_vlan_group *vg, u16 vid)
{
 if (!vg)
  return ((void*)0);

 return br_vlan_lookup(&vg->vlan_hash, vid);
}
