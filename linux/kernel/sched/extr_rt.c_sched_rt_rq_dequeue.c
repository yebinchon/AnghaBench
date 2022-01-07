
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_rq {int dummy; } ;


 int dequeue_top_rt_rq (struct rt_rq*) ;

__attribute__((used)) static inline void sched_rt_rq_dequeue(struct rt_rq *rt_rq)
{
 dequeue_top_rt_rq(rt_rq);
}
