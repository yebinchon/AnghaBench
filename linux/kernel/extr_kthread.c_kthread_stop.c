
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int exit_code; } ;
struct kthread {int exited; int flags; } ;


 int KTHREAD_SHOULD_STOP ;
 int get_task_struct (struct task_struct*) ;
 int kthread_unpark (struct task_struct*) ;
 int put_task_struct (struct task_struct*) ;
 int set_bit (int ,int *) ;
 struct kthread* to_kthread (struct task_struct*) ;
 int trace_sched_kthread_stop (struct task_struct*) ;
 int trace_sched_kthread_stop_ret (int) ;
 int wait_for_completion (int *) ;
 int wake_up_process (struct task_struct*) ;

int kthread_stop(struct task_struct *k)
{
 struct kthread *kthread;
 int ret;

 trace_sched_kthread_stop(k);

 get_task_struct(k);
 kthread = to_kthread(k);
 set_bit(KTHREAD_SHOULD_STOP, &kthread->flags);
 kthread_unpark(k);
 wake_up_process(k);
 wait_for_completion(&kthread->exited);
 ret = k->exit_code;
 put_task_struct(k);

 trace_sched_kthread_stop_ret(ret);
 return ret;
}
