
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_entity {int exec_start; } ;
struct cfs_rq {int dummy; } ;


 int rq_clock_task (int ) ;
 int rq_of (struct cfs_rq*) ;

__attribute__((used)) static inline void
update_stats_curr_start(struct cfs_rq *cfs_rq, struct sched_entity *se)
{



 se->exec_start = rq_clock_task(rq_of(cfs_rq));
}
