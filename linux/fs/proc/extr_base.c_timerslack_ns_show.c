
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int timer_slack_ns; } ;
struct seq_file {struct inode* private; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int user_ns; } ;


 int CAP_SYS_NICE ;
 int EPERM ;
 int ESRCH ;
 TYPE_1__* __task_cred (struct task_struct*) ;
 struct task_struct* current ;
 struct task_struct* get_proc_task (struct inode*) ;
 int ns_capable (int ,int ) ;
 int put_task_struct (struct task_struct*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int security_task_getscheduler (struct task_struct*) ;
 int seq_printf (struct seq_file*,char*,int ) ;
 int task_lock (struct task_struct*) ;
 int task_unlock (struct task_struct*) ;

__attribute__((used)) static int timerslack_ns_show(struct seq_file *m, void *v)
{
 struct inode *inode = m->private;
 struct task_struct *p;
 int err = 0;

 p = get_proc_task(inode);
 if (!p)
  return -ESRCH;

 if (p != current) {
  rcu_read_lock();
  if (!ns_capable(__task_cred(p)->user_ns, CAP_SYS_NICE)) {
   rcu_read_unlock();
   err = -EPERM;
   goto out;
  }
  rcu_read_unlock();

  err = security_task_getscheduler(p);
  if (err)
   goto out;
 }

 task_lock(p);
 seq_printf(m, "%llu\n", p->timer_slack_ns);
 task_unlock(p);

out:
 put_task_struct(p);

 return err;
}
