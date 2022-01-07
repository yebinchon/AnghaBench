
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sit_entry_set {int set_list; } ;


 int kmem_cache_free (int ,struct sit_entry_set*) ;
 int list_del (int *) ;
 int sit_entry_set_slab ;

__attribute__((used)) static void release_sit_entry_set(struct sit_entry_set *ses)
{
 list_del(&ses->set_list);
 kmem_cache_free(sit_entry_set_slab, ses);
}
