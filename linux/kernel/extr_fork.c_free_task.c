
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int flags; int stack_refcount; } ;


 int PF_KTHREAD ;
 int WARN_ON_ONCE (int) ;
 int arch_release_task_struct (struct task_struct*) ;
 int free_kthread_struct (struct task_struct*) ;
 int free_task_struct (struct task_struct*) ;
 int ftrace_graph_exit_task (struct task_struct*) ;
 int put_seccomp_filter (struct task_struct*) ;
 scalar_t__ refcount_read (int *) ;
 int release_task_stack (struct task_struct*) ;
 int rt_mutex_debug_task_free (struct task_struct*) ;

void free_task(struct task_struct *tsk)
{





 release_task_stack(tsk);







 rt_mutex_debug_task_free(tsk);
 ftrace_graph_exit_task(tsk);
 put_seccomp_filter(tsk);
 arch_release_task_struct(tsk);
 if (tsk->flags & PF_KTHREAD)
  free_kthread_struct(tsk);
 free_task_struct(tsk);
}
