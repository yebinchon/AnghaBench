
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zs_pool {int shrinker; } ;


 int unregister_shrinker (int *) ;

__attribute__((used)) static void zs_unregister_shrinker(struct zs_pool *pool)
{
 unregister_shrinker(&pool->shrinker);
}
