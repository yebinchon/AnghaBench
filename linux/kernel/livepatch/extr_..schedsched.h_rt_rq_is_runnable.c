
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_rq {scalar_t__ rt_nr_running; scalar_t__ rt_queued; } ;



__attribute__((used)) static inline bool rt_rq_is_runnable(struct rt_rq *rt_rq)
{
 return rt_rq->rt_queued && rt_rq->rt_nr_running;
}
