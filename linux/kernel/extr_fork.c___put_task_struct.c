
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int signal; int usage; int exit_state; } ;


 int WARN_ON (int) ;
 int cgroup_free (struct task_struct*) ;
 struct task_struct* current ;
 int delayacct_tsk_free (struct task_struct*) ;
 int exit_creds (struct task_struct*) ;
 int free_task (struct task_struct*) ;
 int profile_handoff_task (struct task_struct*) ;
 int put_signal_struct (int ) ;
 int refcount_read (int *) ;
 int security_task_free (struct task_struct*) ;
 int task_numa_free (struct task_struct*,int) ;

void __put_task_struct(struct task_struct *tsk)
{
 WARN_ON(!tsk->exit_state);
 WARN_ON(refcount_read(&tsk->usage));
 WARN_ON(tsk == current);

 cgroup_free(tsk);
 task_numa_free(tsk, 1);
 security_task_free(tsk);
 exit_creds(tsk);
 delayacct_tsk_free(tsk);
 put_signal_struct(tsk->signal);

 if (!profile_handoff_task(tsk))
  free_task(tsk);
}
