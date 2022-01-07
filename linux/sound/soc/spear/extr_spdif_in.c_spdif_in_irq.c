
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spdif_in_dev {scalar_t__ io_base; int dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ SPDIF_IN_IRQ ;
 int SPDIF_IRQ_EMPTYFIFOREAD ;
 int SPDIF_IRQ_FIFOFULL ;
 int SPDIF_IRQ_FIFOWRITE ;
 int SPDIF_IRQ_OUTOFRANGE ;
 int dev_err (int ,char*) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t spdif_in_irq(int irq, void *arg)
{
 struct spdif_in_dev *host = (struct spdif_in_dev *)arg;

 u32 irq_status = readl(host->io_base + SPDIF_IN_IRQ);

 if (!irq_status)
  return IRQ_NONE;

 if (irq_status & SPDIF_IRQ_FIFOWRITE)
  dev_err(host->dev, "spdif in: fifo write error");
 if (irq_status & SPDIF_IRQ_EMPTYFIFOREAD)
  dev_err(host->dev, "spdif in: empty fifo read error");
 if (irq_status & SPDIF_IRQ_FIFOFULL)
  dev_err(host->dev, "spdif in: fifo full error");
 if (irq_status & SPDIF_IRQ_OUTOFRANGE)
  dev_err(host->dev, "spdif in: out of range error");

 writel(0, host->io_base + SPDIF_IN_IRQ);

 return IRQ_HANDLED;
}
