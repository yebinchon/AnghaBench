
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_head {int dummy; } ;


 int atomic_dec (int ) ;
 int kfree (struct rcu_head*) ;
 int n_async_inflight ;
 int this_cpu_ptr (int *) ;

__attribute__((used)) static void rcu_perf_async_cb(struct rcu_head *rhp)
{
 atomic_dec(this_cpu_ptr(&n_async_inflight));
 kfree(rhp);
}
