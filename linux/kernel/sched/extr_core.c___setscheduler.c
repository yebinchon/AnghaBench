
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int * sched_class; int prio; } ;
struct sched_attr {int sched_flags; } ;
struct rq {int dummy; } ;


 int SCHED_FLAG_KEEP_PARAMS ;
 int __setscheduler_params (struct task_struct*,struct sched_attr const*) ;
 scalar_t__ dl_prio (int ) ;
 int dl_sched_class ;
 int fair_sched_class ;
 int normal_prio (struct task_struct*) ;
 int rt_effective_prio (struct task_struct*,int ) ;
 scalar_t__ rt_prio (int ) ;
 int rt_sched_class ;

__attribute__((used)) static void __setscheduler(struct rq *rq, struct task_struct *p,
      const struct sched_attr *attr, bool keep_boost)
{




 if (attr->sched_flags & SCHED_FLAG_KEEP_PARAMS)
  return;

 __setscheduler_params(p, attr);





 p->prio = normal_prio(p);
 if (keep_boost)
  p->prio = rt_effective_prio(p, p->prio);

 if (dl_prio(p->prio))
  p->sched_class = &dl_sched_class;
 else if (rt_prio(p->prio))
  p->sched_class = &rt_sched_class;
 else
  p->sched_class = &fair_sched_class;
}
