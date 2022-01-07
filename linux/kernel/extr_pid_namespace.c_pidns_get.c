
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct ns_common {int dummy; } ;
struct pid_namespace {struct ns_common ns; } ;


 int get_pid_ns (struct pid_namespace*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct pid_namespace* task_active_pid_ns (struct task_struct*) ;

__attribute__((used)) static struct ns_common *pidns_get(struct task_struct *task)
{
 struct pid_namespace *ns;

 rcu_read_lock();
 ns = task_active_pid_ns(task);
 if (ns)
  get_pid_ns(ns);
 rcu_read_unlock();

 return ns ? &ns->ns : ((void*)0);
}
