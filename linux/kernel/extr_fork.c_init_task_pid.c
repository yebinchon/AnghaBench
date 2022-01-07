
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {TYPE_1__* signal; struct pid* thread_pid; } ;
struct pid {int dummy; } ;
typedef enum pid_type { ____Placeholder_pid_type } pid_type ;
struct TYPE_2__ {struct pid** pids; } ;


 int PIDTYPE_PID ;

__attribute__((used)) static inline void
init_task_pid(struct task_struct *task, enum pid_type type, struct pid *pid)
{
 if (type == PIDTYPE_PID)
  task->thread_pid = pid;
 else
  task->signal->pids[type] = pid;
}
