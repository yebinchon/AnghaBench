
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct net_bridge_vlan_group {scalar_t__ pvid; int vlan_hash; } ;
struct net_bridge_vlan {int flags; } ;


 int BRIDGE_VLAN_INFO_UNTAGGED ;
 struct net_bridge_vlan* br_vlan_lookup (int *,scalar_t__) ;
 scalar_t__ br_vlan_should_use (struct net_bridge_vlan*) ;

__attribute__((used)) static bool vlan_default_pvid(struct net_bridge_vlan_group *vg, u16 vid)
{
 struct net_bridge_vlan *v;

 if (vid != vg->pvid)
  return 0;

 v = br_vlan_lookup(&vg->vlan_hash, vid);
 if (v && br_vlan_should_use(v) &&
     (v->flags & BRIDGE_VLAN_INFO_UNTAGGED))
  return 1;

 return 0;
}
