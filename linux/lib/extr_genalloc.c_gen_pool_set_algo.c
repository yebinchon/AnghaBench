
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gen_pool {void* data; scalar_t__ algo; } ;
typedef scalar_t__ genpool_algo_t ;


 scalar_t__ gen_pool_first_fit ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

void gen_pool_set_algo(struct gen_pool *pool, genpool_algo_t algo, void *data)
{
 rcu_read_lock();

 pool->algo = algo;
 if (!pool->algo)
  pool->algo = gen_pool_first_fit;

 pool->data = data;

 rcu_read_unlock();
}
