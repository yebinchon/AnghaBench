
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int mm; } ;


 struct task_struct* find_early_kill_thread (struct task_struct*) ;
 scalar_t__ sysctl_memory_failure_early_kill ;

__attribute__((used)) static struct task_struct *task_early_kill(struct task_struct *tsk,
        int force_early)
{
 struct task_struct *t;
 if (!tsk->mm)
  return ((void*)0);
 if (force_early)
  return tsk;
 t = find_early_kill_thread(tsk);
 if (t)
  return t;
 if (sysctl_memory_failure_early_kill)
  return tsk;
 return ((void*)0);
}
