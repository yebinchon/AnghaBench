
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int flags; struct signal_struct* signal; } ;
struct signal_struct {int flags; } ;


 int PF_EXITING ;
 int SIGNAL_GROUP_COREDUMP ;
 int SIGNAL_GROUP_EXIT ;
 scalar_t__ thread_group_empty (struct task_struct*) ;

__attribute__((used)) static inline bool __task_will_free_mem(struct task_struct *task)
{
 struct signal_struct *sig = task->signal;






 if (sig->flags & SIGNAL_GROUP_COREDUMP)
  return 0;

 if (sig->flags & SIGNAL_GROUP_EXIT)
  return 1;

 if (thread_group_empty(task) && (task->flags & PF_EXITING))
  return 1;

 return 0;
}
