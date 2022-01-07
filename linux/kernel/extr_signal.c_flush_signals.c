
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct task_struct {TYPE_2__* sighand; TYPE_1__* signal; int pending; } ;
struct TYPE_4__ {int siglock; } ;
struct TYPE_3__ {int shared_pending; } ;


 int TIF_SIGPENDING ;
 int clear_tsk_thread_flag (struct task_struct*,int ) ;
 int flush_sigqueue (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void flush_signals(struct task_struct *t)
{
 unsigned long flags;

 spin_lock_irqsave(&t->sighand->siglock, flags);
 clear_tsk_thread_flag(t, TIF_SIGPENDING);
 flush_sigqueue(&t->pending);
 flush_sigqueue(&t->signal->shared_pending);
 spin_unlock_irqrestore(&t->sighand->siglock, flags);
}
