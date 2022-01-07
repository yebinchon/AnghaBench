
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zswap_pool {int dummy; } ;


 struct zswap_pool* __zswap_pool_current () ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int zswap_pool_get (struct zswap_pool*) ;

__attribute__((used)) static struct zswap_pool *zswap_pool_current_get(void)
{
 struct zswap_pool *pool;

 rcu_read_lock();

 pool = __zswap_pool_current();
 if (!zswap_pool_get(pool))
  pool = ((void*)0);

 rcu_read_unlock();

 return pool;
}
