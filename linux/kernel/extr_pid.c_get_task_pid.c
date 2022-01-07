
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct pid {int dummy; } ;
typedef enum pid_type { ____Placeholder_pid_type } pid_type ;


 struct pid* get_pid (int ) ;
 int rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int * task_pid_ptr (struct task_struct*,int) ;

struct pid *get_task_pid(struct task_struct *task, enum pid_type type)
{
 struct pid *pid;
 rcu_read_lock();
 pid = get_pid(rcu_dereference(*task_pid_ptr(task, type)));
 rcu_read_unlock();
 return pid;
}
