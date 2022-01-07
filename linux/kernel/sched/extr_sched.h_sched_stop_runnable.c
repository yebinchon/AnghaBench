
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rq {scalar_t__ stop; } ;


 scalar_t__ task_on_rq_queued (scalar_t__) ;

__attribute__((used)) static inline bool sched_stop_runnable(struct rq *rq)
{
 return rq->stop && task_on_rq_queued(rq->stop);
}
