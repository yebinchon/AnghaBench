
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt5514_dsp {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int rt5514_schedule_copy (struct rt5514_dsp*) ;

__attribute__((used)) static irqreturn_t rt5514_spi_irq(int irq, void *data)
{
 struct rt5514_dsp *rt5514_dsp = data;

 rt5514_schedule_copy(rt5514_dsp);

 return IRQ_HANDLED;
}
