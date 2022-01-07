
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_mcpdm {int dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int MCPDM_DN_IRQ ;
 int MCPDM_DN_IRQ_EMPTY ;
 int MCPDM_DN_IRQ_FULL ;
 int MCPDM_REG_IRQSTATUS ;
 int MCPDM_UP_IRQ ;
 int MCPDM_UP_IRQ_EMPTY ;
 int MCPDM_UP_IRQ_FULL ;
 int dev_dbg (int ,char*) ;
 int omap_mcpdm_read (struct omap_mcpdm*,int ) ;
 int omap_mcpdm_write (struct omap_mcpdm*,int ,int) ;

__attribute__((used)) static irqreturn_t omap_mcpdm_irq_handler(int irq, void *dev_id)
{
 struct omap_mcpdm *mcpdm = dev_id;
 int irq_status;

 irq_status = omap_mcpdm_read(mcpdm, MCPDM_REG_IRQSTATUS);


 omap_mcpdm_write(mcpdm, MCPDM_REG_IRQSTATUS, irq_status);

 if (irq_status & MCPDM_DN_IRQ_FULL)
  dev_dbg(mcpdm->dev, "DN (playback) FIFO Full\n");

 if (irq_status & MCPDM_DN_IRQ_EMPTY)
  dev_dbg(mcpdm->dev, "DN (playback) FIFO Empty\n");

 if (irq_status & MCPDM_DN_IRQ)
  dev_dbg(mcpdm->dev, "DN (playback) write request\n");

 if (irq_status & MCPDM_UP_IRQ_FULL)
  dev_dbg(mcpdm->dev, "UP (capture) FIFO Full\n");

 if (irq_status & MCPDM_UP_IRQ_EMPTY)
  dev_dbg(mcpdm->dev, "UP (capture) FIFO Empty\n");

 if (irq_status & MCPDM_UP_IRQ)
  dev_dbg(mcpdm->dev, "UP (capture) write request\n");

 return IRQ_HANDLED;
}
