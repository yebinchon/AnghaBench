
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_entries; } ;
struct batadv_orig_node_vlan {int list; TYPE_1__ tt; } ;
struct batadv_orig_node {int vlan_list_lock; } ;


 scalar_t__ atomic_add_return (int,int *) ;
 struct batadv_orig_node_vlan* batadv_orig_node_vlan_new (struct batadv_orig_node*,unsigned short) ;
 int batadv_orig_node_vlan_put (struct batadv_orig_node_vlan*) ;
 int hlist_del_init_rcu (int *) ;
 int hlist_unhashed (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void batadv_tt_global_size_mod(struct batadv_orig_node *orig_node,
          unsigned short vid, int v)
{
 struct batadv_orig_node_vlan *vlan;

 vlan = batadv_orig_node_vlan_new(orig_node, vid);
 if (!vlan)
  return;

 if (atomic_add_return(v, &vlan->tt.num_entries) == 0) {
  spin_lock_bh(&orig_node->vlan_list_lock);
  if (!hlist_unhashed(&vlan->list)) {
   hlist_del_init_rcu(&vlan->list);
   batadv_orig_node_vlan_put(vlan);
  }
  spin_unlock_bh(&orig_node->vlan_list_lock);
 }

 batadv_orig_node_vlan_put(vlan);
}
