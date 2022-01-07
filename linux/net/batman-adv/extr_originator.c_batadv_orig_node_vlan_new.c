
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_orig_node_vlan {unsigned short vid; int list; int refcount; } ;
struct batadv_orig_node {int vlan_list_lock; int vlan_list; } ;


 int GFP_ATOMIC ;
 struct batadv_orig_node_vlan* batadv_orig_node_vlan_get (struct batadv_orig_node*,unsigned short) ;
 int hlist_add_head_rcu (int *,int *) ;
 int kref_get (int *) ;
 int kref_init (int *) ;
 struct batadv_orig_node_vlan* kzalloc (int,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

struct batadv_orig_node_vlan *
batadv_orig_node_vlan_new(struct batadv_orig_node *orig_node,
     unsigned short vid)
{
 struct batadv_orig_node_vlan *vlan;

 spin_lock_bh(&orig_node->vlan_list_lock);


 vlan = batadv_orig_node_vlan_get(orig_node, vid);
 if (vlan)
  goto out;

 vlan = kzalloc(sizeof(*vlan), GFP_ATOMIC);
 if (!vlan)
  goto out;

 kref_init(&vlan->refcount);
 vlan->vid = vid;

 kref_get(&vlan->refcount);
 hlist_add_head_rcu(&vlan->list, &orig_node->vlan_list);

out:
 spin_unlock_bh(&orig_node->vlan_list_lock);

 return vlan;
}
