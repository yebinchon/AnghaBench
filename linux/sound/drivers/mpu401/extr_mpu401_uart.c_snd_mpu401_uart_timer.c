
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct snd_mpu401 {scalar_t__ rmidi; int timer_lock; int timer; } ;


 int _snd_mpu401_uart_interrupt (struct snd_mpu401*) ;
 struct snd_mpu401* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 struct snd_mpu401* mpu ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timer ;

__attribute__((used)) static void snd_mpu401_uart_timer(struct timer_list *t)
{
 struct snd_mpu401 *mpu = from_timer(mpu, t, timer);
 unsigned long flags;

 spin_lock_irqsave(&mpu->timer_lock, flags);

 mod_timer(&mpu->timer, 1 + jiffies);
 spin_unlock_irqrestore(&mpu->timer_lock, flags);
 if (mpu->rmidi)
  _snd_mpu401_uart_interrupt(mpu);
}
