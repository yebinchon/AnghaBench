
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct upid {int nr; TYPE_1__* ns; } ;
struct task_struct {int dummy; } ;
struct pid {int level; struct upid* numbers; } ;
struct TYPE_2__ {int proc_mnt; } ;


 int proc_flush_task_mnt (int ,int ,int ) ;
 struct pid* task_pid (struct task_struct*) ;
 struct pid* task_tgid (struct task_struct*) ;

void proc_flush_task(struct task_struct *task)
{
 int i;
 struct pid *pid, *tgid;
 struct upid *upid;

 pid = task_pid(task);
 tgid = task_tgid(task);

 for (i = 0; i <= pid->level; i++) {
  upid = &pid->numbers[i];
  proc_flush_task_mnt(upid->ns->proc_mnt, upid->nr,
     tgid->numbers[i].nr);
 }
}
