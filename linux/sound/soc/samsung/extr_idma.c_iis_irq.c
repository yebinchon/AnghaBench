
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct idma_ctrl {int period; int token; int (* cb ) (int ,int ) ;scalar_t__ start; scalar_t__ end; scalar_t__ periodsz; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int lp_tx_addr; scalar_t__ regs; } ;


 int AHB_CLRLVL0INT ;
 int AHB_LVL0INT ;
 scalar_t__ I2SAHB ;
 scalar_t__ I2SLVL0ADDR ;
 int IRQ_HANDLED ;
 TYPE_1__ idma ;
 int readl (scalar_t__) ;
 int stub1 (int ,int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t iis_irq(int irqno, void *dev_id)
{
 struct idma_ctrl *prtd = (struct idma_ctrl *)dev_id;
 u32 iisahb, val, addr;

 iisahb = readl(idma.regs + I2SAHB);

 val = (iisahb & AHB_LVL0INT) ? AHB_CLRLVL0INT : 0;

 if (val) {
  iisahb |= val;
  writel(iisahb, idma.regs + I2SAHB);

  addr = readl(idma.regs + I2SLVL0ADDR) - idma.lp_tx_addr;
  addr += prtd->periodsz;
  addr %= (u32)(prtd->end - prtd->start);
  addr += idma.lp_tx_addr;

  writel(addr, idma.regs + I2SLVL0ADDR);

  if (prtd->cb)
   prtd->cb(prtd->token, prtd->period);
 }

 return IRQ_HANDLED;
}
