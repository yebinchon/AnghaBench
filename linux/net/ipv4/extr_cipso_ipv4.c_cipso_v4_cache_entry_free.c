
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cipso_v4_map_cache_entry {struct cipso_v4_map_cache_entry* key; scalar_t__ lsm_data; } ;


 int kfree (struct cipso_v4_map_cache_entry*) ;
 int netlbl_secattr_cache_free (scalar_t__) ;

__attribute__((used)) static void cipso_v4_cache_entry_free(struct cipso_v4_map_cache_entry *entry)
{
 if (entry->lsm_data)
  netlbl_secattr_cache_free(entry->lsm_data);
 kfree(entry->key);
 kfree(entry);
}
