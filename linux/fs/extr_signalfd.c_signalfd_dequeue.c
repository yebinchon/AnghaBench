
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct signalfd_ctx {int sigmask; } ;
typedef int ssize_t ;
typedef int kernel_siginfo_t ;
struct TYPE_7__ {TYPE_1__* sighand; } ;
struct TYPE_6__ {int signalfd_wqh; int siglock; } ;


 int DECLARE_WAITQUEUE (int ,TYPE_2__*) ;
 int EAGAIN ;
 int ERESTARTSYS ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int __set_current_state (int ) ;
 int add_wait_queue (int *,int *) ;
 TYPE_2__* current ;
 int dequeue_signal (TYPE_2__*,int *,int *) ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 scalar_t__ signal_pending (TYPE_2__*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wait ;

__attribute__((used)) static ssize_t signalfd_dequeue(struct signalfd_ctx *ctx, kernel_siginfo_t *info,
    int nonblock)
{
 ssize_t ret;
 DECLARE_WAITQUEUE(wait, current);

 spin_lock_irq(&current->sighand->siglock);
 ret = dequeue_signal(current, &ctx->sigmask, info);
 switch (ret) {
 case 0:
  if (!nonblock)
   break;
  ret = -EAGAIN;

 default:
  spin_unlock_irq(&current->sighand->siglock);
  return ret;
 }

 add_wait_queue(&current->sighand->signalfd_wqh, &wait);
 for (;;) {
  set_current_state(TASK_INTERRUPTIBLE);
  ret = dequeue_signal(current, &ctx->sigmask, info);
  if (ret != 0)
   break;
  if (signal_pending(current)) {
   ret = -ERESTARTSYS;
   break;
  }
  spin_unlock_irq(&current->sighand->siglock);
  schedule();
  spin_lock_irq(&current->sighand->siglock);
 }
 spin_unlock_irq(&current->sighand->siglock);

 remove_wait_queue(&current->sighand->signalfd_wqh, &wait);
 __set_current_state(TASK_RUNNING);

 return ret;
}
