
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfs_rq {int dummy; } ;


 int cpu_of (int ) ;
 int rq_of (struct cfs_rq*) ;

int sched_trace_cfs_rq_cpu(struct cfs_rq *cfs_rq)
{
 return cfs_rq ? cpu_of(rq_of(cfs_rq)) : -1;
}
