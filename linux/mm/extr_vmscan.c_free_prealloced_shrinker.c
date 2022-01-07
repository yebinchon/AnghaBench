
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shrinker {int flags; int * nr_deferred; } ;


 int SHRINKER_MEMCG_AWARE ;
 int kfree (int *) ;
 int unregister_memcg_shrinker (struct shrinker*) ;

void free_prealloced_shrinker(struct shrinker *shrinker)
{
 if (!shrinker->nr_deferred)
  return;

 if (shrinker->flags & SHRINKER_MEMCG_AWARE)
  unregister_memcg_shrinker(shrinker);

 kfree(shrinker->nr_deferred);
 shrinker->nr_deferred = ((void*)0);
}
