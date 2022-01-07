
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int flags; } ;


 int PF_KTHREAD ;
 int PF_NOFREEZE ;
 int PF_SUSPEND_TASK ;
 int TIF_MEMDIE ;
 scalar_t__ cgroup_freezing (struct task_struct*) ;
 scalar_t__ pm_freezing ;
 scalar_t__ pm_nosig_freezing ;
 scalar_t__ test_tsk_thread_flag (struct task_struct*,int ) ;

bool freezing_slow_path(struct task_struct *p)
{
 if (p->flags & (PF_NOFREEZE | PF_SUSPEND_TASK))
  return 0;

 if (test_tsk_thread_flag(p, TIF_MEMDIE))
  return 0;

 if (pm_nosig_freezing || cgroup_freezing(p))
  return 1;

 if (pm_freezing && !(p->flags & PF_KTHREAD))
  return 1;

 return 0;
}
