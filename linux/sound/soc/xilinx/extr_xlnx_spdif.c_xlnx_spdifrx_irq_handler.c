
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spdif_dev_data {int rx_chsts_updated; int chsts_q; scalar_t__ base; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int XSPDIF_CH_STS_MASK ;
 scalar_t__ XSPDIF_IRQ_ENABLE_REG ;
 scalar_t__ XSPDIF_IRQ_STS_REG ;
 int readl (scalar_t__) ;
 int wake_up_interruptible (int *) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t xlnx_spdifrx_irq_handler(int irq, void *arg)
{
 u32 val;
 struct spdif_dev_data *ctx = arg;

 val = readl(ctx->base + XSPDIF_IRQ_STS_REG);
 if (val & XSPDIF_CH_STS_MASK) {
  writel(val & XSPDIF_CH_STS_MASK,
         ctx->base + XSPDIF_IRQ_STS_REG);
  val = readl(ctx->base +
       XSPDIF_IRQ_ENABLE_REG);
  writel(val & ~XSPDIF_CH_STS_MASK,
         ctx->base + XSPDIF_IRQ_ENABLE_REG);

  ctx->rx_chsts_updated = 1;
  wake_up_interruptible(&ctx->chsts_q);
  return IRQ_HANDLED;
 }

 return IRQ_NONE;
}
