
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct batadv_tt_orig_list_entry {struct batadv_orig_node* orig_node; } ;
struct TYPE_2__ {int flags; } ;
struct batadv_tt_local_entry {TYPE_1__ common; } ;
struct batadv_tt_global_entry {int dummy; } ;
struct batadv_priv {int dummy; } ;
struct batadv_orig_node {int refcount; } ;


 int BATADV_TT_CLIENT_PENDING ;
 scalar_t__ _batadv_is_ap_isolated (struct batadv_tt_local_entry*,struct batadv_tt_global_entry*) ;
 struct batadv_tt_orig_list_entry* batadv_transtable_best_orig (struct batadv_priv*,struct batadv_tt_global_entry*) ;
 int batadv_tt_global_entry_put (struct batadv_tt_global_entry*) ;
 struct batadv_tt_global_entry* batadv_tt_global_hash_find (struct batadv_priv*,int const*,unsigned short) ;
 int batadv_tt_local_entry_put (struct batadv_tt_local_entry*) ;
 struct batadv_tt_local_entry* batadv_tt_local_hash_find (struct batadv_priv*,int const*,unsigned short) ;
 scalar_t__ batadv_vlan_ap_isola_get (struct batadv_priv*,unsigned short) ;
 int kref_get_unless_zero (int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

struct batadv_orig_node *batadv_transtable_search(struct batadv_priv *bat_priv,
        const u8 *src,
        const u8 *addr,
        unsigned short vid)
{
 struct batadv_tt_local_entry *tt_local_entry = ((void*)0);
 struct batadv_tt_global_entry *tt_global_entry = ((void*)0);
 struct batadv_orig_node *orig_node = ((void*)0);
 struct batadv_tt_orig_list_entry *best_entry;

 if (src && batadv_vlan_ap_isola_get(bat_priv, vid)) {
  tt_local_entry = batadv_tt_local_hash_find(bat_priv, src, vid);
  if (!tt_local_entry ||
      (tt_local_entry->common.flags & BATADV_TT_CLIENT_PENDING))
   goto out;
 }

 tt_global_entry = batadv_tt_global_hash_find(bat_priv, addr, vid);
 if (!tt_global_entry)
  goto out;




 if (tt_local_entry &&
     _batadv_is_ap_isolated(tt_local_entry, tt_global_entry))
  goto out;

 rcu_read_lock();
 best_entry = batadv_transtable_best_orig(bat_priv, tt_global_entry);

 if (best_entry)
  orig_node = best_entry->orig_node;
 if (orig_node && !kref_get_unless_zero(&orig_node->refcount))
  orig_node = ((void*)0);
 rcu_read_unlock();

out:
 if (tt_global_entry)
  batadv_tt_global_entry_put(tt_global_entry);
 if (tt_local_entry)
  batadv_tt_local_entry_put(tt_local_entry);

 return orig_node;
}
