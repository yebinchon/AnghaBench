
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auditd_connection {int pid; } ;
typedef scalar_t__ pid_t ;


 int auditd_conn ;
 scalar_t__ pid_vnr (int ) ;
 struct auditd_connection* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static pid_t auditd_pid_vnr(void)
{
 pid_t pid;
 const struct auditd_connection *ac;

 rcu_read_lock();
 ac = rcu_dereference(auditd_conn);
 if (!ac || !ac->pid)
  pid = 0;
 else
  pid = pid_vnr(ac->pid);
 rcu_read_unlock();

 return pid;
}
