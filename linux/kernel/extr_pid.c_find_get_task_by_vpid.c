
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
typedef int pid_t ;


 struct task_struct* find_task_by_vpid (int ) ;
 int get_task_struct (struct task_struct*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

struct task_struct *find_get_task_by_vpid(pid_t nr)
{
 struct task_struct *task;

 rcu_read_lock();
 task = find_task_by_vpid(nr);
 if (task)
  get_task_struct(task);
 rcu_read_unlock();

 return task;
}
