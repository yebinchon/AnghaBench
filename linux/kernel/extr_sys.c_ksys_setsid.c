
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct task_struct {TYPE_1__* signal; } ;
struct pid {int dummy; } ;
typedef int pid_t ;
struct TYPE_4__ {struct task_struct* group_leader; } ;
struct TYPE_3__ {int leader; } ;


 int EPERM ;
 int PIDTYPE_PGID ;
 TYPE_2__* current ;
 scalar_t__ pid_task (struct pid*,int ) ;
 int pid_vnr (struct pid*) ;
 int proc_clear_tty (struct task_struct*) ;
 int proc_sid_connector (struct task_struct*) ;
 int sched_autogroup_create_attach (struct task_struct*) ;
 int set_special_pids (struct pid*) ;
 struct pid* task_pid (struct task_struct*) ;
 int tasklist_lock ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;

int ksys_setsid(void)
{
 struct task_struct *group_leader = current->group_leader;
 struct pid *sid = task_pid(group_leader);
 pid_t session = pid_vnr(sid);
 int err = -EPERM;

 write_lock_irq(&tasklist_lock);

 if (group_leader->signal->leader)
  goto out;




 if (pid_task(sid, PIDTYPE_PGID))
  goto out;

 group_leader->signal->leader = 1;
 set_special_pids(sid);

 proc_clear_tty(group_leader);

 err = session;
out:
 write_unlock_irq(&tasklist_lock);
 if (err > 0) {
  proc_sid_connector(group_leader);
  sched_autogroup_create_attach(group_leader);
 }
 return err;
}
