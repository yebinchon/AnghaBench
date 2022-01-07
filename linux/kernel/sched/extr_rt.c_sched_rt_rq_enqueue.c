
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_rq {int rt_nr_running; } ;
struct rq {int dummy; } ;


 int enqueue_top_rt_rq (struct rt_rq*) ;
 int resched_curr (struct rq*) ;
 struct rq* rq_of_rt_rq (struct rt_rq*) ;

__attribute__((used)) static inline void sched_rt_rq_enqueue(struct rt_rq *rt_rq)
{
 struct rq *rq = rq_of_rt_rq(rt_rq);

 if (!rt_rq->rt_nr_running)
  return;

 enqueue_top_rt_rq(rt_rq);
 resched_curr(rq);
}
