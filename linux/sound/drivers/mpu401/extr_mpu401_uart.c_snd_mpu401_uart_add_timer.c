
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mpu401 {int timer_lock; int timer_invoked; int timer; } ;


 int MPU401_MODE_INPUT_TIMER ;
 int MPU401_MODE_OUTPUT_TIMER ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int snd_mpu401_uart_timer ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static void snd_mpu401_uart_add_timer (struct snd_mpu401 *mpu, int input)
{
 unsigned long flags;

 spin_lock_irqsave (&mpu->timer_lock, flags);
 if (mpu->timer_invoked == 0) {
  timer_setup(&mpu->timer, snd_mpu401_uart_timer, 0);
  mod_timer(&mpu->timer, 1 + jiffies);
 }
 mpu->timer_invoked |= input ? MPU401_MODE_INPUT_TIMER :
  MPU401_MODE_OUTPUT_TIMER;
 spin_unlock_irqrestore (&mpu->timer_lock, flags);
}
