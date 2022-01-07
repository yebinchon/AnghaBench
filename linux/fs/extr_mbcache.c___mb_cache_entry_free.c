
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mb_cache_entry {int dummy; } ;


 int kmem_cache_free (int ,struct mb_cache_entry*) ;
 int mb_entry_cache ;

void __mb_cache_entry_free(struct mb_cache_entry *entry)
{
 kmem_cache_free(mb_entry_cache, entry);
}
