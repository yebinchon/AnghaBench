
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct inode {int dummy; } ;


 int PIDTYPE_PID ;
 int current ;
 int generic_permission (struct inode*,int) ;
 struct task_struct* pid_task (int ,int ) ;
 int proc_pid (struct inode*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ same_thread_group (struct task_struct*,int ) ;

int proc_fd_permission(struct inode *inode, int mask)
{
 struct task_struct *p;
 int rv;

 rv = generic_permission(inode, mask);
 if (rv == 0)
  return rv;

 rcu_read_lock();
 p = pid_task(proc_pid(inode), PIDTYPE_PID);
 if (p && same_thread_group(p, current))
  rv = 0;
 rcu_read_unlock();

 return rv;
}
