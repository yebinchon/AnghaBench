
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shrinker {int flags; int * nr_deferred; int list; } ;


 int SHRINKER_MEMCG_AWARE ;
 int down_write (int *) ;
 int kfree (int *) ;
 int list_del (int *) ;
 int shrinker_rwsem ;
 int unregister_memcg_shrinker (struct shrinker*) ;
 int up_write (int *) ;

void unregister_shrinker(struct shrinker *shrinker)
{
 if (!shrinker->nr_deferred)
  return;
 if (shrinker->flags & SHRINKER_MEMCG_AWARE)
  unregister_memcg_shrinker(shrinker);
 down_write(&shrinker_rwsem);
 list_del(&shrinker->list);
 up_write(&shrinker_rwsem);
 kfree(shrinker->nr_deferred);
 shrinker->nr_deferred = ((void*)0);
}
