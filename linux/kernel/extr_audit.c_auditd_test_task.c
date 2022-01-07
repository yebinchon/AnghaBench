
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct auditd_connection {scalar_t__ pid; } ;


 int auditd_conn ;
 struct auditd_connection* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ task_tgid (struct task_struct*) ;

int auditd_test_task(struct task_struct *task)
{
 int rc;
 struct auditd_connection *ac;

 rcu_read_lock();
 ac = rcu_dereference(auditd_conn);
 rc = (ac && ac->pid == task_tgid(task) ? 1 : 0);
 rcu_read_unlock();

 return rc;
}
