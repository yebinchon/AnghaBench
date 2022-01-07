
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rq {int dummy; } ;


 int cpu_of (struct rq*) ;

int sched_trace_rq_cpu(struct rq *rq)
{
 return rq ? cpu_of(rq) : -1;
}
