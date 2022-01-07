
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zswap_pool {int dummy; } ;


 struct zswap_pool* __zswap_pool_current () ;
 int assert_spin_locked (int *) ;
 int zswap_pools_lock ;

__attribute__((used)) static struct zswap_pool *zswap_pool_current(void)
{
 assert_spin_locked(&zswap_pools_lock);

 return __zswap_pool_current();
}
