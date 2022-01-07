
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2sbus_dev {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int handle_interrupt (struct i2sbus_dev*,int ) ;

irqreturn_t i2sbus_tx_intr(int irq, void *devid)
{
 handle_interrupt((struct i2sbus_dev *)devid, 0);
 return IRQ_HANDLED;
}
