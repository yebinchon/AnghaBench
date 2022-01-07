
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct task_struct {TYPE_2__* signal; } ;
struct oom_control {unsigned long chosen_points; struct task_struct* chosen; int totalpages; } ;
struct TYPE_4__ {TYPE_1__* oom_mm; } ;
struct TYPE_3__ {int flags; } ;


 int MMF_OOM_SKIP ;
 unsigned long ULONG_MAX ;
 int get_task_struct (struct task_struct*) ;
 int is_memcg_oom (struct oom_control*) ;
 int is_sysrq_oom (struct oom_control*) ;
 unsigned long oom_badness (struct task_struct*,int ) ;
 int oom_cpuset_eligible (struct task_struct*,struct oom_control*) ;
 scalar_t__ oom_task_origin (struct task_struct*) ;
 scalar_t__ oom_unkillable_task (struct task_struct*) ;
 int put_task_struct (struct task_struct*) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ tsk_is_oom_victim (struct task_struct*) ;

__attribute__((used)) static int oom_evaluate_task(struct task_struct *task, void *arg)
{
 struct oom_control *oc = arg;
 unsigned long points;

 if (oom_unkillable_task(task))
  goto next;


 if (!is_memcg_oom(oc) && !oom_cpuset_eligible(task, oc))
  goto next;







 if (!is_sysrq_oom(oc) && tsk_is_oom_victim(task)) {
  if (test_bit(MMF_OOM_SKIP, &task->signal->oom_mm->flags))
   goto next;
  goto abort;
 }





 if (oom_task_origin(task)) {
  points = ULONG_MAX;
  goto select;
 }

 points = oom_badness(task, oc->totalpages);
 if (!points || points < oc->chosen_points)
  goto next;

select:
 if (oc->chosen)
  put_task_struct(oc->chosen);
 get_task_struct(task);
 oc->chosen = task;
 oc->chosen_points = points;
next:
 return 0;
abort:
 if (oc->chosen)
  put_task_struct(oc->chosen);
 oc->chosen = (void *)-1UL;
 return 1;
}
