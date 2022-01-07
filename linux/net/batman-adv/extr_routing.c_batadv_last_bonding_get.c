
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_orig_node {int neigh_list_lock; struct batadv_orig_ifinfo* last_bonding_candidate; } ;
struct batadv_orig_ifinfo {int refcount; } ;


 int kref_get (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static struct batadv_orig_ifinfo *
batadv_last_bonding_get(struct batadv_orig_node *orig_node)
{
 struct batadv_orig_ifinfo *last_bonding_candidate;

 spin_lock_bh(&orig_node->neigh_list_lock);
 last_bonding_candidate = orig_node->last_bonding_candidate;

 if (last_bonding_candidate)
  kref_get(&last_bonding_candidate->refcount);
 spin_unlock_bh(&orig_node->neigh_list_lock);

 return last_bonding_candidate;
}
