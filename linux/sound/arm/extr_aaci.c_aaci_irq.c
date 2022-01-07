
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aaci {scalar_t__ base; } ;
typedef int irqreturn_t ;


 scalar_t__ AACI_ALLINTS ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int aaci_fifo_irq (struct aaci*,int,int) ;
 int readl (scalar_t__) ;

__attribute__((used)) static irqreturn_t aaci_irq(int irq, void *devid)
{
 struct aaci *aaci = devid;
 u32 mask;
 int i;

 mask = readl(aaci->base + AACI_ALLINTS);
 if (mask) {
  u32 m = mask;
  for (i = 0; i < 4; i++, m >>= 7) {
   if (m & 0x7f) {
    aaci_fifo_irq(aaci, i, m);
   }
  }
 }

 return mask ? IRQ_HANDLED : IRQ_NONE;
}
