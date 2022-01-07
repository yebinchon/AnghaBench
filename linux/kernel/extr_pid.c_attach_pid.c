
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int * pid_links; } ;
struct pid {int * tasks; } ;
typedef enum pid_type { ____Placeholder_pid_type } pid_type ;


 int hlist_add_head_rcu (int *,int *) ;
 struct pid** task_pid_ptr (struct task_struct*,int) ;

void attach_pid(struct task_struct *task, enum pid_type type)
{
 struct pid *pid = *task_pid_ptr(task, type);
 hlist_add_head_rcu(&task->pid_links[type], &pid->tasks[type]);
}
