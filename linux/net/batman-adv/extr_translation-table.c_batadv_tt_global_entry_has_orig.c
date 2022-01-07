
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct batadv_tt_orig_list_entry {int flags; } ;
struct batadv_tt_global_entry {int dummy; } ;
struct batadv_orig_node {int dummy; } ;


 struct batadv_tt_orig_list_entry* batadv_tt_global_orig_entry_find (struct batadv_tt_global_entry const*,struct batadv_orig_node const*) ;
 int batadv_tt_orig_list_entry_put (struct batadv_tt_orig_list_entry*) ;

__attribute__((used)) static bool
batadv_tt_global_entry_has_orig(const struct batadv_tt_global_entry *entry,
    const struct batadv_orig_node *orig_node,
    u8 *flags)
{
 struct batadv_tt_orig_list_entry *orig_entry;
 bool found = 0;

 orig_entry = batadv_tt_global_orig_entry_find(entry, orig_node);
 if (orig_entry) {
  found = 1;

  if (flags)
   *flags = orig_entry->flags;

  batadv_tt_orig_list_entry_put(orig_entry);
 }

 return found;
}
