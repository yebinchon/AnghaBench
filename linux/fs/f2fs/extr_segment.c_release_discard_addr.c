
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct discard_entry {int list; } ;


 int discard_entry_slab ;
 int kmem_cache_free (int ,struct discard_entry*) ;
 int list_del (int *) ;

__attribute__((used)) static void release_discard_addr(struct discard_entry *entry)
{
 list_del(&entry->list);
 kmem_cache_free(discard_entry_slab, entry);
}
