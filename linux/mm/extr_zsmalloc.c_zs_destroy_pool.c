
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zs_pool {int index; struct zs_pool* name; int size; int * fullness_list; struct zs_pool** size_class; } ;
struct size_class {int index; struct size_class* name; int size; int * fullness_list; struct size_class** size_class; } ;


 int NR_ZS_FULLNESS ;
 int ZS_EMPTY ;
 int ZS_SIZE_CLASSES ;
 int destroy_cache (struct zs_pool*) ;
 int kfree (struct zs_pool*) ;
 int list_empty (int *) ;
 int pr_info (char*,int ,int) ;
 int zs_pool_stat_destroy (struct zs_pool*) ;
 int zs_unregister_migration (struct zs_pool*) ;
 int zs_unregister_shrinker (struct zs_pool*) ;

void zs_destroy_pool(struct zs_pool *pool)
{
 int i;

 zs_unregister_shrinker(pool);
 zs_unregister_migration(pool);
 zs_pool_stat_destroy(pool);

 for (i = 0; i < ZS_SIZE_CLASSES; i++) {
  int fg;
  struct size_class *class = pool->size_class[i];

  if (!class)
   continue;

  if (class->index != i)
   continue;

  for (fg = ZS_EMPTY; fg < NR_ZS_FULLNESS; fg++) {
   if (!list_empty(&class->fullness_list[fg])) {
    pr_info("Freeing non-empty class with size %db, fullness group %d\n",
     class->size, fg);
   }
  }
  kfree(class);
 }

 destroy_cache(pool);
 kfree(pool->name);
 kfree(pool);
}
