
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct pid_namespace {int dummy; } ;
typedef int pid_t ;
typedef enum pid_type { ____Placeholder_pid_type } pid_type ;


 int current ;
 scalar_t__ likely (int ) ;
 int pid_alive (struct task_struct*) ;
 int pid_nr_ns (int ,struct pid_namespace*) ;
 int rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct pid_namespace* task_active_pid_ns (int ) ;
 int * task_pid_ptr (struct task_struct*,int) ;

pid_t __task_pid_nr_ns(struct task_struct *task, enum pid_type type,
   struct pid_namespace *ns)
{
 pid_t nr = 0;

 rcu_read_lock();
 if (!ns)
  ns = task_active_pid_ns(current);
 if (likely(pid_alive(task)))
  nr = pid_nr_ns(rcu_dereference(*task_pid_ptr(task, type)), ns);
 rcu_read_unlock();

 return nr;
}
