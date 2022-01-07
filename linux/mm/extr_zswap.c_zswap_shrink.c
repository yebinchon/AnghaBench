
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zswap_pool {int zpool; } ;


 int ENOENT ;
 int zpool_shrink (int ,int,int *) ;
 struct zswap_pool* zswap_pool_last_get () ;
 int zswap_pool_put (struct zswap_pool*) ;

__attribute__((used)) static int zswap_shrink(void)
{
 struct zswap_pool *pool;
 int ret;

 pool = zswap_pool_last_get();
 if (!pool)
  return -ENOENT;

 ret = zpool_shrink(pool->zpool, 1, ((void*)0));

 zswap_pool_put(pool);

 return ret;
}
