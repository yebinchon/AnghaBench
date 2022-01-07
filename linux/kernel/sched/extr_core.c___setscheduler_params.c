
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int policy; int normal_prio; int rt_priority; int static_prio; } ;
struct sched_attr {int sched_policy; int sched_priority; int sched_nice; } ;


 int NICE_TO_PRIO (int ) ;
 int SETPARAM_POLICY ;
 int __setparam_dl (struct task_struct*,struct sched_attr const*) ;
 scalar_t__ dl_policy (int) ;
 scalar_t__ fair_policy (int) ;
 int normal_prio (struct task_struct*) ;
 int set_load_weight (struct task_struct*,int) ;

__attribute__((used)) static void __setscheduler_params(struct task_struct *p,
  const struct sched_attr *attr)
{
 int policy = attr->sched_policy;

 if (policy == SETPARAM_POLICY)
  policy = p->policy;

 p->policy = policy;

 if (dl_policy(policy))
  __setparam_dl(p, attr);
 else if (fair_policy(policy))
  p->static_prio = NICE_TO_PRIO(attr->sched_nice);






 p->rt_priority = attr->sched_priority;
 p->normal_prio = normal_prio(p);
 set_load_weight(p, 1);
}
