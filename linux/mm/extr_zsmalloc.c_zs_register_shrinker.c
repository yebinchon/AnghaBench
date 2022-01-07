
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int seeks; scalar_t__ batch; int count_objects; int scan_objects; } ;
struct zs_pool {TYPE_1__ shrinker; } ;


 int DEFAULT_SEEKS ;
 int register_shrinker (TYPE_1__*) ;
 int zs_shrinker_count ;
 int zs_shrinker_scan ;

__attribute__((used)) static int zs_register_shrinker(struct zs_pool *pool)
{
 pool->shrinker.scan_objects = zs_shrinker_scan;
 pool->shrinker.count_objects = zs_shrinker_count;
 pool->shrinker.batch = 0;
 pool->shrinker.seeks = DEFAULT_SEEKS;

 return register_shrinker(&pool->shrinker);
}
