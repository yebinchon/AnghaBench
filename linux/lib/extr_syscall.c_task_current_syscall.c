
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {long state; } ;
struct syscall_info {int dummy; } ;


 int EAGAIN ;
 int collect_syscall (struct task_struct*,struct syscall_info*) ;
 struct task_struct* current ;
 scalar_t__ unlikely (int) ;
 unsigned long wait_task_inactive (struct task_struct*,long) ;

int task_current_syscall(struct task_struct *target, struct syscall_info *info)
{
 long state;
 unsigned long ncsw;

 if (target == current)
  return collect_syscall(target, info);

 state = target->state;
 if (unlikely(!state))
  return -EAGAIN;

 ncsw = wait_task_inactive(target, state);
 if (unlikely(!ncsw) ||
     unlikely(collect_syscall(target, info)) ||
     unlikely(wait_task_inactive(target, state) != ncsw))
  return -EAGAIN;

 return 0;
}
