
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int * pid_links; int thread_pid; } ;
typedef enum pid_type { ____Placeholder_pid_type } pid_type ;


 int PIDTYPE_PID ;
 int hlist_replace_rcu (int *,int *) ;

void transfer_pid(struct task_struct *old, struct task_struct *new,
      enum pid_type type)
{
 if (type == PIDTYPE_PID)
  new->thread_pid = old->thread_pid;
 hlist_replace_rcu(&old->pid_links[type], &new->pid_links[type]);
}
