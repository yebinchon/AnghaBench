
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct omap_mcbsp {int dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int MCBSP_READ (struct omap_mcbsp*,int ) ;
 int MCBSP_READ_CACHE (struct omap_mcbsp*,int ) ;
 int MCBSP_WRITE (struct omap_mcbsp*,int ,int ) ;
 int SPCR2 ;
 int XSYNC_ERR ;
 int dev_dbg (int ,char*,int) ;
 int dev_err (int ,char*,int) ;

__attribute__((used)) static irqreturn_t omap_mcbsp_tx_irq_handler(int irq, void *data)
{
 struct omap_mcbsp *mcbsp = data;
 u16 irqst_spcr2;

 irqst_spcr2 = MCBSP_READ(mcbsp, SPCR2);
 dev_dbg(mcbsp->dev, "TX IRQ callback : 0x%x\n", irqst_spcr2);

 if (irqst_spcr2 & XSYNC_ERR) {
  dev_err(mcbsp->dev, "TX Frame Sync Error! : 0x%x\n",
   irqst_spcr2);

  MCBSP_WRITE(mcbsp, SPCR2, MCBSP_READ_CACHE(mcbsp, SPCR2));
 }

 return IRQ_HANDLED;
}
