
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct task_struct {TYPE_3__* sighand; } ;
struct TYPE_6__ {int siglock; TYPE_2__* action; } ;
struct TYPE_4__ {int sa_handler; } ;
struct TYPE_5__ {TYPE_1__ sa; } ;


 int SIGSEGV ;
 int SIG_DFL ;
 struct task_struct* current ;
 int force_sig (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void force_sigsegv(int sig)
{
 struct task_struct *p = current;

 if (sig == SIGSEGV) {
  unsigned long flags;
  spin_lock_irqsave(&p->sighand->siglock, flags);
  p->sighand->action[sig - 1].sa.sa_handler = SIG_DFL;
  spin_unlock_irqrestore(&p->sighand->siglock, flags);
 }
 force_sig(SIGSEGV);
}
