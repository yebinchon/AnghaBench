
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_avg {int dummy; } ;
struct cfs_rq {struct sched_avg const avg; } ;



const struct sched_avg *sched_trace_cfs_rq_avg(struct cfs_rq *cfs_rq)
{



 return ((void*)0);

}
