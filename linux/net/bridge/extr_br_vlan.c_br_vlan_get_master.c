
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct netlink_ext_ack {int dummy; } ;
struct net_bridge_vlan_group {int dummy; } ;
struct net_bridge_vlan {int refcnt; } ;
struct net_bridge {int dummy; } ;


 scalar_t__ WARN_ON (int) ;
 scalar_t__ br_vlan_add (struct net_bridge*,int ,int ,int*,struct netlink_ext_ack*) ;
 struct net_bridge_vlan* br_vlan_find (struct net_bridge_vlan_group*,int ) ;
 struct net_bridge_vlan_group* br_vlan_group (struct net_bridge*) ;
 int refcount_inc (int *) ;
 int refcount_set (int *,int) ;

__attribute__((used)) static struct net_bridge_vlan *
br_vlan_get_master(struct net_bridge *br, u16 vid,
     struct netlink_ext_ack *extack)
{
 struct net_bridge_vlan_group *vg;
 struct net_bridge_vlan *masterv;

 vg = br_vlan_group(br);
 masterv = br_vlan_find(vg, vid);
 if (!masterv) {
  bool changed;


  if (br_vlan_add(br, vid, 0, &changed, extack))
   return ((void*)0);
  masterv = br_vlan_find(vg, vid);
  if (WARN_ON(!masterv))
   return ((void*)0);
  refcount_set(&masterv->refcnt, 1);
  return masterv;
 }
 refcount_inc(&masterv->refcnt);

 return masterv;
}
