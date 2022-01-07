
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* sighand; } ;
struct TYPE_4__ {int siglock; } ;


 int TIF_SIGPENDING ;
 TYPE_2__* current ;
 int recalc_sigpending () ;
 int set_tsk_thread_flag (TYPE_2__*,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void calculate_sigpending(void)
{



 spin_lock_irq(&current->sighand->siglock);
 set_tsk_thread_flag(current, TIF_SIGPENDING);
 recalc_sigpending();
 spin_unlock_irq(&current->sighand->siglock);
}
