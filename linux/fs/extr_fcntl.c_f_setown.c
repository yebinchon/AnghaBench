
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pid {int dummy; } ;
struct file {int dummy; } ;
typedef enum pid_type { ____Placeholder_pid_type } pid_type ;


 int EINVAL ;
 int ESRCH ;
 int INT_MIN ;
 int PIDTYPE_PGID ;
 int PIDTYPE_TGID ;
 int __f_setown (struct file*,struct pid*,int,int) ;
 struct pid* find_vpid (int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

int f_setown(struct file *filp, unsigned long arg, int force)
{
 enum pid_type type;
 struct pid *pid = ((void*)0);
 int who = arg, ret = 0;

 type = PIDTYPE_TGID;
 if (who < 0) {

  if (who == INT_MIN)
   return -EINVAL;

  type = PIDTYPE_PGID;
  who = -who;
 }

 rcu_read_lock();
 if (who) {
  pid = find_vpid(who);
  if (!pid)
   ret = -ESRCH;
 }

 if (!ret)
  __f_setown(filp, pid, type, force);
 rcu_read_unlock();

 return ret;
}
