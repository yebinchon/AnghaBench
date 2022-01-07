
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_vlan_group {int vlan_hash; } ;
struct net_bridge_vlan {int rcu; int vnode; int refcnt; int br; } ;


 int __vlan_del_list (struct net_bridge_vlan*) ;
 int br_master_vlan_rcu_free ;
 struct net_bridge_vlan_group* br_vlan_group (int ) ;
 int br_vlan_is_master (struct net_bridge_vlan*) ;
 int br_vlan_rht_params ;
 int call_rcu (int *,int ) ;
 scalar_t__ refcount_dec_and_test (int *) ;
 int rhashtable_remove_fast (int *,int *,int ) ;

__attribute__((used)) static void br_vlan_put_master(struct net_bridge_vlan *masterv)
{
 struct net_bridge_vlan_group *vg;

 if (!br_vlan_is_master(masterv))
  return;

 vg = br_vlan_group(masterv->br);
 if (refcount_dec_and_test(&masterv->refcnt)) {
  rhashtable_remove_fast(&vg->vlan_hash,
           &masterv->vnode, br_vlan_rht_params);
  __vlan_del_list(masterv);
  call_rcu(&masterv->rcu, br_master_vlan_rcu_free);
 }
}
