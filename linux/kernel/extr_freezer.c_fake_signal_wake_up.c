
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 scalar_t__ lock_task_sighand (struct task_struct*,unsigned long*) ;
 int signal_wake_up (struct task_struct*,int ) ;
 int unlock_task_sighand (struct task_struct*,unsigned long*) ;

__attribute__((used)) static void fake_signal_wake_up(struct task_struct *p)
{
 unsigned long flags;

 if (lock_task_sighand(p, &flags)) {
  signal_wake_up(p, 0);
  unlock_task_sighand(p, &flags);
 }
}
