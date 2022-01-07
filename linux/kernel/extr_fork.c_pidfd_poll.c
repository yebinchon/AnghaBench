
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {scalar_t__ exit_state; } ;
struct poll_table_struct {int dummy; } ;
struct pid {int wait_pidfd; } ;
struct file {struct pid* private_data; } ;


 int PIDTYPE_PID ;
 int POLLIN ;
 int POLLRDNORM ;
 struct task_struct* pid_task (struct pid*,int ) ;
 int poll_wait (struct file*,int *,struct poll_table_struct*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ thread_group_empty (struct task_struct*) ;

__attribute__((used)) static unsigned int pidfd_poll(struct file *file, struct poll_table_struct *pts)
{
 struct task_struct *task;
 struct pid *pid = file->private_data;
 int poll_flags = 0;

 poll_wait(file, &pid->wait_pidfd, pts);

 rcu_read_lock();
 task = pid_task(pid, PIDTYPE_PID);





 if (!task || (task->exit_state && thread_group_empty(task)))
  poll_flags = POLLIN | POLLRDNORM;
 rcu_read_unlock();

 return poll_flags;
}
