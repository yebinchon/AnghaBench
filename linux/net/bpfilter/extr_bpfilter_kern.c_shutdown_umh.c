
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_3__ {int pid; } ;
struct TYPE_4__ {TYPE_1__ info; scalar_t__ stop; } ;


 int PIDTYPE_PID ;
 int SIGKILL ;
 TYPE_2__ bpfilter_ops ;
 int find_vpid (int ) ;
 struct task_struct* get_pid_task (int ,int ) ;
 int put_task_struct (struct task_struct*) ;
 int send_sig (int ,struct task_struct*,int) ;

__attribute__((used)) static void shutdown_umh(void)
{
 struct task_struct *tsk;

 if (bpfilter_ops.stop)
  return;

 tsk = get_pid_task(find_vpid(bpfilter_ops.info.pid), PIDTYPE_PID);
 if (tsk) {
  send_sig(SIGKILL, tsk, 1);
  put_task_struct(tsk);
 }
}
