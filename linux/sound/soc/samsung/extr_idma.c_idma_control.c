
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int lock; scalar_t__ regs; } ;


 int AHB_DMAEN ;
 int AHB_INTENLVL0 ;
 scalar_t__ I2SAHB ;


 TYPE_1__ idma ;
 int readl (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void idma_control(int op)
{
 u32 val = readl(idma.regs + I2SAHB);

 spin_lock(&idma.lock);

 switch (op) {
 case 129:
  val |= (AHB_INTENLVL0 | AHB_DMAEN);
  break;
 case 128:
  val &= ~(AHB_INTENLVL0 | AHB_DMAEN);
  break;
 default:
  spin_unlock(&idma.lock);
  return;
 }

 writel(val, idma.regs + I2SAHB);
 spin_unlock(&idma.lock);
}
