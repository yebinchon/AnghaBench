
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_orig_node {int neigh_list_lock; struct batadv_orig_ifinfo* last_bonding_candidate; } ;
struct batadv_orig_ifinfo {int refcount; } ;


 int batadv_orig_ifinfo_put (struct batadv_orig_ifinfo*) ;
 int kref_get (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void
batadv_last_bonding_replace(struct batadv_orig_node *orig_node,
       struct batadv_orig_ifinfo *new_candidate)
{
 struct batadv_orig_ifinfo *old_candidate;

 spin_lock_bh(&orig_node->neigh_list_lock);
 old_candidate = orig_node->last_bonding_candidate;

 if (new_candidate)
  kref_get(&new_candidate->refcount);
 orig_node->last_bonding_candidate = new_candidate;
 spin_unlock_bh(&orig_node->neigh_list_lock);

 if (old_candidate)
  batadv_orig_ifinfo_put(old_candidate);
}
