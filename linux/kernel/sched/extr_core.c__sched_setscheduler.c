
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int static_prio; } ;
struct sched_param {int sched_priority; } ;
struct sched_attr {int sched_policy; int sched_flags; int sched_nice; int sched_priority; } ;


 int PRIO_TO_NICE (int ) ;
 int SCHED_FLAG_RESET_ON_FORK ;
 int SCHED_RESET_ON_FORK ;
 int SETPARAM_POLICY ;
 int __sched_setscheduler (struct task_struct*,struct sched_attr*,int,int) ;

__attribute__((used)) static int _sched_setscheduler(struct task_struct *p, int policy,
          const struct sched_param *param, bool check)
{
 struct sched_attr attr = {
  .sched_policy = policy,
  .sched_priority = param->sched_priority,
  .sched_nice = PRIO_TO_NICE(p->static_prio),
 };


 if ((policy != SETPARAM_POLICY) && (policy & SCHED_RESET_ON_FORK)) {
  attr.sched_flags |= SCHED_FLAG_RESET_ON_FORK;
  policy &= ~SCHED_RESET_ON_FORK;
  attr.sched_policy = policy;
 }

 return __sched_setscheduler(p, &attr, check, 1);
}
