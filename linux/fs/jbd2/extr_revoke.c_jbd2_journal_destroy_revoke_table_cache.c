
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * jbd2_revoke_table_cache ;
 int kmem_cache_destroy (int *) ;

void jbd2_journal_destroy_revoke_table_cache(void)
{
 kmem_cache_destroy(jbd2_revoke_table_cache);
 jbd2_revoke_table_cache = ((void*)0);
}
