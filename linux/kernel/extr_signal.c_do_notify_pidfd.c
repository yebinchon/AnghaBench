
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {scalar_t__ exit_state; } ;
struct pid {int wait_pidfd; } ;


 int WARN_ON (int) ;
 struct pid* task_pid (struct task_struct*) ;
 int wake_up_all (int *) ;

__attribute__((used)) static void do_notify_pidfd(struct task_struct *task)
{
 struct pid *pid;

 WARN_ON(task->exit_state == 0);
 pid = task_pid(task);
 wake_up_all(&pid->wait_pidfd);
}
