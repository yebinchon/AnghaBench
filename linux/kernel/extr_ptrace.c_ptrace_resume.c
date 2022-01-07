
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {unsigned long exit_code; TYPE_1__* sighand; } ;
struct TYPE_2__ {int siglock; } ;


 int EIO ;
 long PTRACE_SYSCALL ;
 long PTRACE_SYSEMU ;
 long PTRACE_SYSEMU_SINGLESTEP ;
 int TIF_SYSCALL_EMU ;
 int TIF_SYSCALL_TRACE ;
 int __TASK_TRACED ;
 int arch_has_block_step () ;
 int arch_has_single_step () ;
 int clear_tsk_thread_flag (struct task_struct*,int ) ;
 int current ;
 scalar_t__ is_singleblock (long) ;
 scalar_t__ is_singlestep (long) ;
 scalar_t__ is_sysemu_singlestep (long) ;
 int set_tsk_thread_flag (struct task_struct*,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int thread_group_empty (int ) ;
 scalar_t__ unlikely (int) ;
 int user_disable_single_step (struct task_struct*) ;
 int user_enable_block_step (struct task_struct*) ;
 int user_enable_single_step (struct task_struct*) ;
 int valid_signal (unsigned long) ;
 int wake_up_state (struct task_struct*,int ) ;

__attribute__((used)) static int ptrace_resume(struct task_struct *child, long request,
    unsigned long data)
{
 bool need_siglock;

 if (!valid_signal(data))
  return -EIO;

 if (request == PTRACE_SYSCALL)
  set_tsk_thread_flag(child, TIF_SYSCALL_TRACE);
 else
  clear_tsk_thread_flag(child, TIF_SYSCALL_TRACE);
 if (is_singleblock(request)) {
  if (unlikely(!arch_has_block_step()))
   return -EIO;
  user_enable_block_step(child);
 } else if (is_singlestep(request) || is_sysemu_singlestep(request)) {
  if (unlikely(!arch_has_single_step()))
   return -EIO;
  user_enable_single_step(child);
 } else {
  user_disable_single_step(child);
 }
 need_siglock = data && !thread_group_empty(current);
 if (need_siglock)
  spin_lock_irq(&child->sighand->siglock);
 child->exit_code = data;
 wake_up_state(child, __TASK_TRACED);
 if (need_siglock)
  spin_unlock_irq(&child->sighand->siglock);

 return 0;
}
