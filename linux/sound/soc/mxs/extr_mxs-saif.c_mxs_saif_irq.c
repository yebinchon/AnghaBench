
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxs_saif {scalar_t__ base; int dev; int fifo_overrun; int fifo_underrun; } ;
typedef int irqreturn_t ;


 unsigned int BM_SAIF_STAT_FIFO_OVERFLOW_IRQ ;
 unsigned int BM_SAIF_STAT_FIFO_UNDERFLOW_IRQ ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ MXS_CLR_ADDR ;
 scalar_t__ SAIF_CTRL ;
 scalar_t__ SAIF_STAT ;
 unsigned int __raw_readl (scalar_t__) ;
 int __raw_writel (unsigned int,scalar_t__) ;
 int dev_dbg (int ,char*,unsigned int,...) ;

__attribute__((used)) static irqreturn_t mxs_saif_irq(int irq, void *dev_id)
{
 struct mxs_saif *saif = dev_id;
 unsigned int stat;

 stat = __raw_readl(saif->base + SAIF_STAT);
 if (!(stat & (BM_SAIF_STAT_FIFO_UNDERFLOW_IRQ |
   BM_SAIF_STAT_FIFO_OVERFLOW_IRQ)))
  return IRQ_NONE;

 if (stat & BM_SAIF_STAT_FIFO_UNDERFLOW_IRQ) {
  dev_dbg(saif->dev, "underrun!!! %d\n", ++saif->fifo_underrun);
  __raw_writel(BM_SAIF_STAT_FIFO_UNDERFLOW_IRQ,
    saif->base + SAIF_STAT + MXS_CLR_ADDR);
 }

 if (stat & BM_SAIF_STAT_FIFO_OVERFLOW_IRQ) {
  dev_dbg(saif->dev, "overrun!!! %d\n", ++saif->fifo_overrun);
  __raw_writel(BM_SAIF_STAT_FIFO_OVERFLOW_IRQ,
    saif->base + SAIF_STAT + MXS_CLR_ADDR);
 }

 dev_dbg(saif->dev, "SAIF_CTRL %x SAIF_STAT %x\n",
        __raw_readl(saif->base + SAIF_CTRL),
        __raw_readl(saif->base + SAIF_STAT));

 return IRQ_HANDLED;
}
