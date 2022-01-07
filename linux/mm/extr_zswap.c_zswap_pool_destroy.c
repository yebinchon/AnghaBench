
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zswap_pool {int zpool; int tfm; int node; } ;


 int CPUHP_MM_ZSWP_POOL_PREPARE ;
 int cpuhp_state_remove_instance (int ,int *) ;
 int free_percpu (int ) ;
 int kfree (struct zswap_pool*) ;
 int zpool_destroy_pool (int ) ;
 int zswap_pool_debug (char*,struct zswap_pool*) ;

__attribute__((used)) static void zswap_pool_destroy(struct zswap_pool *pool)
{
 zswap_pool_debug("destroying", pool);

 cpuhp_state_remove_instance(CPUHP_MM_ZSWP_POOL_PREPARE, &pool->node);
 free_percpu(pool->tfm);
 zpool_destroy_pool(pool->zpool);
 kfree(pool);
}
