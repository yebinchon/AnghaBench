
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct batadv_tt_local_entry {int dummy; } ;
struct TYPE_2__ {int addr; } ;
struct batadv_tt_global_entry {TYPE_1__ common; int orig_list; } ;
struct batadv_priv {int dummy; } ;
struct batadv_orig_node {int dummy; } ;


 int batadv_tt_global_del_orig_list (struct batadv_tt_global_entry*) ;
 int batadv_tt_global_del_orig_node (struct batadv_priv*,struct batadv_tt_global_entry*,struct batadv_orig_node*,char const*) ;
 int batadv_tt_global_del_roaming (struct batadv_priv*,struct batadv_tt_global_entry*,struct batadv_orig_node*,char const*) ;
 int batadv_tt_global_entry_put (struct batadv_tt_global_entry*) ;
 int batadv_tt_global_free (struct batadv_priv*,struct batadv_tt_global_entry*,char const*) ;
 struct batadv_tt_global_entry* batadv_tt_global_hash_find (struct batadv_priv*,unsigned char const*,unsigned short) ;
 int batadv_tt_local_entry_put (struct batadv_tt_local_entry*) ;
 struct batadv_tt_local_entry* batadv_tt_local_hash_find (struct batadv_priv*,int ,unsigned short) ;
 scalar_t__ hlist_empty (int *) ;

__attribute__((used)) static void batadv_tt_global_del(struct batadv_priv *bat_priv,
     struct batadv_orig_node *orig_node,
     const unsigned char *addr, unsigned short vid,
     const char *message, bool roaming)
{
 struct batadv_tt_global_entry *tt_global_entry;
 struct batadv_tt_local_entry *local_entry = ((void*)0);

 tt_global_entry = batadv_tt_global_hash_find(bat_priv, addr, vid);
 if (!tt_global_entry)
  goto out;

 if (!roaming) {
  batadv_tt_global_del_orig_node(bat_priv, tt_global_entry,
            orig_node, message);

  if (hlist_empty(&tt_global_entry->orig_list))
   batadv_tt_global_free(bat_priv, tt_global_entry,
           message);

  goto out;
 }
 local_entry = batadv_tt_local_hash_find(bat_priv,
      tt_global_entry->common.addr,
      vid);
 if (local_entry) {

  batadv_tt_global_del_orig_list(tt_global_entry);
  batadv_tt_global_free(bat_priv, tt_global_entry, message);
 } else {

  batadv_tt_global_del_roaming(bat_priv, tt_global_entry,
          orig_node, message);
 }

out:
 if (tt_global_entry)
  batadv_tt_global_entry_put(tt_global_entry);
 if (local_entry)
  batadv_tt_local_entry_put(local_entry);
}
