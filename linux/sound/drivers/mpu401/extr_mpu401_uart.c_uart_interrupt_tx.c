
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mpu401 {int output_lock; int mode; } ;


 int MPU401_MODE_BIT_OUTPUT ;
 int MPU401_MODE_BIT_OUTPUT_TRIGGER ;
 int snd_mpu401_uart_output_write (struct snd_mpu401*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void uart_interrupt_tx(struct snd_mpu401 *mpu)
{
 unsigned long flags;

 if (test_bit(MPU401_MODE_BIT_OUTPUT, &mpu->mode) &&
     test_bit(MPU401_MODE_BIT_OUTPUT_TRIGGER, &mpu->mode)) {
  spin_lock_irqsave(&mpu->output_lock, flags);
  snd_mpu401_uart_output_write(mpu);
  spin_unlock_irqrestore(&mpu->output_lock, flags);
 }
}
