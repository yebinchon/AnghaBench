
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_avg {int dummy; } ;
struct rq {struct sched_avg const avg_dl; } ;



const struct sched_avg *sched_trace_rq_avg_dl(struct rq *rq)
{



 return ((void*)0);

}
