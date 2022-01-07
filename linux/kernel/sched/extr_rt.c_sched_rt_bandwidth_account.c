
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_rq {scalar_t__ rt_time; } ;
struct rt_bandwidth {scalar_t__ rt_runtime; int rt_period_timer; } ;


 scalar_t__ hrtimer_active (int *) ;
 struct rt_bandwidth* sched_rt_bandwidth (struct rt_rq*) ;

bool sched_rt_bandwidth_account(struct rt_rq *rt_rq)
{
 struct rt_bandwidth *rt_b = sched_rt_bandwidth(rt_rq);

 return (hrtimer_active(&rt_b->rt_period_timer) ||
  rt_rq->rt_time < rt_b->rt_runtime);
}
