
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct timerfd_ctx {TYPE_1__ wqh; scalar_t__ ticks; } ;
struct file {struct timerfd_ctx* private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLIN ;
 int poll_wait (struct file*,TYPE_1__*,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static __poll_t timerfd_poll(struct file *file, poll_table *wait)
{
 struct timerfd_ctx *ctx = file->private_data;
 __poll_t events = 0;
 unsigned long flags;

 poll_wait(file, &ctx->wqh, wait);

 spin_lock_irqsave(&ctx->wqh.lock, flags);
 if (ctx->ticks)
  events |= EPOLLIN;
 spin_unlock_irqrestore(&ctx->wqh.lock, flags);

 return events;
}
