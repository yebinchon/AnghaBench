
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct pid {int dummy; } ;
typedef int pid_t ;


 int ESRCH ;
 struct task_struct* current ;
 struct task_struct* find_task_by_vpid (int ) ;
 int pid_vnr (struct pid*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int security_task_getpgid (struct task_struct*) ;
 struct pid* task_pgrp (struct task_struct*) ;

__attribute__((used)) static int do_getpgid(pid_t pid)
{
 struct task_struct *p;
 struct pid *grp;
 int retval;

 rcu_read_lock();
 if (!pid)
  grp = task_pgrp(current);
 else {
  retval = -ESRCH;
  p = find_task_by_vpid(pid);
  if (!p)
   goto out;
  grp = task_pgrp(p);
  if (!grp)
   goto out;

  retval = security_task_getpgid(p);
  if (retval)
   goto out;
 }
 retval = pid_vnr(grp);
out:
 rcu_read_unlock();
 return retval;
}
