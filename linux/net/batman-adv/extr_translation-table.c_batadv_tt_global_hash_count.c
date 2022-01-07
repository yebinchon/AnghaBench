
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct batadv_tt_global_entry {int orig_list_count; } ;
struct batadv_priv {int dummy; } ;


 int atomic_read (int *) ;
 int batadv_tt_global_entry_put (struct batadv_tt_global_entry*) ;
 struct batadv_tt_global_entry* batadv_tt_global_hash_find (struct batadv_priv*,int const*,unsigned short) ;

int batadv_tt_global_hash_count(struct batadv_priv *bat_priv,
    const u8 *addr, unsigned short vid)
{
 struct batadv_tt_global_entry *tt_global_entry;
 int count;

 tt_global_entry = batadv_tt_global_hash_find(bat_priv, addr, vid);
 if (!tt_global_entry)
  return 0;

 count = atomic_read(&tt_global_entry->orig_list_count);
 batadv_tt_global_entry_put(tt_global_entry);

 return count;
}
