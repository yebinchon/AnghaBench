
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct calipso_map_cache_entry {struct calipso_map_cache_entry* key; scalar_t__ lsm_data; } ;


 int kfree (struct calipso_map_cache_entry*) ;
 int netlbl_secattr_cache_free (scalar_t__) ;

__attribute__((used)) static void calipso_cache_entry_free(struct calipso_map_cache_entry *entry)
{
 if (entry->lsm_data)
  netlbl_secattr_cache_free(entry->lsm_data);
 kfree(entry->key);
 kfree(entry);
}
