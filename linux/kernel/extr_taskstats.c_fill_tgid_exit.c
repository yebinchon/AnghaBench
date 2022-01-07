
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct task_struct {TYPE_2__* sighand; TYPE_1__* signal; } ;
struct TYPE_4__ {int siglock; } ;
struct TYPE_3__ {int stats; } ;


 int delayacct_add_tsk (int ,struct task_struct*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void fill_tgid_exit(struct task_struct *tsk)
{
 unsigned long flags;

 spin_lock_irqsave(&tsk->sighand->siglock, flags);
 if (!tsk->signal->stats)
  goto ret;







 delayacct_add_tsk(tsk->signal->stats, tsk);
ret:
 spin_unlock_irqrestore(&tsk->sighand->siglock, flags);
 return;
}
