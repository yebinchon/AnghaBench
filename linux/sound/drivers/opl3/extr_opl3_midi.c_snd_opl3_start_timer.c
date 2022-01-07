
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_opl3 {int sys_timer_status; int sys_timer_lock; int tlist; } ;


 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_opl3_start_timer(struct snd_opl3 *opl3)
{
 unsigned long flags;
 spin_lock_irqsave(&opl3->sys_timer_lock, flags);
 if (! opl3->sys_timer_status) {
  mod_timer(&opl3->tlist, jiffies + 1);
  opl3->sys_timer_status = 1;
 }
 spin_unlock_irqrestore(&opl3->sys_timer_lock, flags);
}
