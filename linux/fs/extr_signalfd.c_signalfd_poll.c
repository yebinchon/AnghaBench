
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct signalfd_ctx {int sigmask; } ;
struct file {struct signalfd_ctx* private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;
struct TYPE_6__ {TYPE_2__* sighand; TYPE_1__* signal; int pending; } ;
struct TYPE_5__ {int siglock; int signalfd_wqh; } ;
struct TYPE_4__ {int shared_pending; } ;


 int EPOLLIN ;
 TYPE_3__* current ;
 scalar_t__ next_signal (int *,int *) ;
 int poll_wait (struct file*,int *,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static __poll_t signalfd_poll(struct file *file, poll_table *wait)
{
 struct signalfd_ctx *ctx = file->private_data;
 __poll_t events = 0;

 poll_wait(file, &current->sighand->signalfd_wqh, wait);

 spin_lock_irq(&current->sighand->siglock);
 if (next_signal(&current->pending, &ctx->sigmask) ||
     next_signal(&current->signal->shared_pending,
   &ctx->sigmask))
  events |= EPOLLIN;
 spin_unlock_irq(&current->sighand->siglock);

 return events;
}
