
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nat_entry {int dummy; } ;


 int kmem_cache_free (int ,struct nat_entry*) ;
 int nat_entry_slab ;

__attribute__((used)) static void __free_nat_entry(struct nat_entry *e)
{
 kmem_cache_free(nat_entry_slab, e);
}
