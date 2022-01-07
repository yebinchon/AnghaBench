
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct pid_namespace {int dummy; } ;
typedef int pid_t ;


 int PIDTYPE_PID ;
 int RCU_LOCKDEP_WARN (int,char*) ;
 int find_pid_ns (int ,struct pid_namespace*) ;
 struct task_struct* pid_task (int ,int ) ;
 int rcu_read_lock_held () ;

struct task_struct *find_task_by_pid_ns(pid_t nr, struct pid_namespace *ns)
{
 RCU_LOCKDEP_WARN(!rcu_read_lock_held(),
    "find_task_by_pid_ns() needs rcu_read_lock() protection");
 return pid_task(find_pid_ns(nr, ns), PIDTYPE_PID);
}
