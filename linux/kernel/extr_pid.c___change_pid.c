
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int * pid_links; } ;
struct pid {int * tasks; } ;
typedef enum pid_type { ____Placeholder_pid_type } pid_type ;


 int PIDTYPE_MAX ;
 int free_pid (struct pid*) ;
 int hlist_del_rcu (int *) ;
 int hlist_empty (int *) ;
 struct pid** task_pid_ptr (struct task_struct*,int) ;

__attribute__((used)) static void __change_pid(struct task_struct *task, enum pid_type type,
   struct pid *new)
{
 struct pid **pid_ptr = task_pid_ptr(task, type);
 struct pid *pid;
 int tmp;

 pid = *pid_ptr;

 hlist_del_rcu(&task->pid_links[type]);
 *pid_ptr = new;

 for (tmp = PIDTYPE_MAX; --tmp >= 0; )
  if (!hlist_empty(&pid->tasks[tmp]))
   return;

 free_pid(pid);
}
