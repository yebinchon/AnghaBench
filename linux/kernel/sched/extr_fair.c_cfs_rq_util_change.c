
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfs_rq {int dummy; } ;
struct rq {struct cfs_rq cfs; } ;


 int SCHED_CPUFREQ_MIGRATION ;
 int cpufreq_update_util (struct rq*,int) ;
 struct rq* rq_of (struct cfs_rq*) ;

__attribute__((used)) static inline void cfs_rq_util_change(struct cfs_rq *cfs_rq, int flags)
{
 struct rq *rq = rq_of(cfs_rq);

 if (&rq->cfs == cfs_rq || (flags & SCHED_CPUFREQ_MIGRATION)) {
  cpufreq_update_util(rq, flags);
 }
}
