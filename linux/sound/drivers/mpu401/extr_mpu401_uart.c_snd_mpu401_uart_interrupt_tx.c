
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mpu401 {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int uart_interrupt_tx (struct snd_mpu401*) ;

irqreturn_t snd_mpu401_uart_interrupt_tx(int irq, void *dev_id)
{
 struct snd_mpu401 *mpu = dev_id;

 if (!mpu)
  return IRQ_NONE;
 uart_interrupt_tx(mpu);
 return IRQ_HANDLED;
}
