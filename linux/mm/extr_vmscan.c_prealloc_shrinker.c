
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shrinker {int flags; int * nr_deferred; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SHRINKER_MEMCG_AWARE ;
 int SHRINKER_NUMA_AWARE ;
 int kfree (int *) ;
 int * kzalloc (unsigned int,int ) ;
 unsigned int nr_node_ids ;
 scalar_t__ prealloc_memcg_shrinker (struct shrinker*) ;

int prealloc_shrinker(struct shrinker *shrinker)
{
 unsigned int size = sizeof(*shrinker->nr_deferred);

 if (shrinker->flags & SHRINKER_NUMA_AWARE)
  size *= nr_node_ids;

 shrinker->nr_deferred = kzalloc(size, GFP_KERNEL);
 if (!shrinker->nr_deferred)
  return -ENOMEM;

 if (shrinker->flags & SHRINKER_MEMCG_AWARE) {
  if (prealloc_memcg_shrinker(shrinker))
   goto free_deferred;
 }

 return 0;

free_deferred:
 kfree(shrinker->nr_deferred);
 shrinker->nr_deferred = ((void*)0);
 return -ENOMEM;
}
