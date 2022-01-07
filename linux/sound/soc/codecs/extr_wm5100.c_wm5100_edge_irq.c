
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ irqreturn_t ;


 scalar_t__ IRQ_NONE ;
 scalar_t__ wm5100_irq (int,void*) ;

__attribute__((used)) static irqreturn_t wm5100_edge_irq(int irq, void *data)
{
 irqreturn_t ret = IRQ_NONE;
 irqreturn_t val;

 do {
  val = wm5100_irq(irq, data);
  if (val != IRQ_NONE)
   ret = val;
 } while (val != IRQ_NONE);

 return ret;
}
