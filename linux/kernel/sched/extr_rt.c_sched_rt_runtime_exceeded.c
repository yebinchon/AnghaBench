
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct rt_rq {int rt_throttled; scalar_t__ rt_time; } ;
struct rt_bandwidth {int rt_runtime; } ;


 scalar_t__ RUNTIME_INF ;
 int balance_runtime (struct rt_rq*) ;
 scalar_t__ likely (int ) ;
 int printk_deferred_once (char*) ;
 int rt_rq_throttled (struct rt_rq*) ;
 struct rt_bandwidth* sched_rt_bandwidth (struct rt_rq*) ;
 scalar_t__ sched_rt_period (struct rt_rq*) ;
 int sched_rt_rq_dequeue (struct rt_rq*) ;
 scalar_t__ sched_rt_runtime (struct rt_rq*) ;

__attribute__((used)) static int sched_rt_runtime_exceeded(struct rt_rq *rt_rq)
{
 u64 runtime = sched_rt_runtime(rt_rq);

 if (rt_rq->rt_throttled)
  return rt_rq_throttled(rt_rq);

 if (runtime >= sched_rt_period(rt_rq))
  return 0;

 balance_runtime(rt_rq);
 runtime = sched_rt_runtime(rt_rq);
 if (runtime == RUNTIME_INF)
  return 0;

 if (rt_rq->rt_time > runtime) {
  struct rt_bandwidth *rt_b = sched_rt_bandwidth(rt_rq);





  if (likely(rt_b->rt_runtime)) {
   rt_rq->rt_throttled = 1;
   printk_deferred_once("sched: RT throttling activated\n");
  } else {





   rt_rq->rt_time = 0;
  }

  if (rt_rq_throttled(rt_rq)) {
   sched_rt_rq_dequeue(rt_rq);
   return 1;
  }
 }

 return 0;
}
