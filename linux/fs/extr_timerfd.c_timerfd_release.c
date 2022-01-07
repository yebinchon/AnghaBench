
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tmr; int alarm; } ;
struct timerfd_ctx {TYPE_1__ t; } ;
struct inode {int dummy; } ;
struct file {struct timerfd_ctx* private_data; } ;


 int alarm_cancel (int *) ;
 int hrtimer_cancel (int *) ;
 scalar_t__ isalarm (struct timerfd_ctx*) ;
 int kfree_rcu (struct timerfd_ctx*,int ) ;
 int rcu ;
 int timerfd_remove_cancel (struct timerfd_ctx*) ;

__attribute__((used)) static int timerfd_release(struct inode *inode, struct file *file)
{
 struct timerfd_ctx *ctx = file->private_data;

 timerfd_remove_cancel(ctx);

 if (isalarm(ctx))
  alarm_cancel(&ctx->t.alarm);
 else
  hrtimer_cancel(&ctx->t.tmr);
 kfree_rcu(ctx, rcu);
 return 0;
}
