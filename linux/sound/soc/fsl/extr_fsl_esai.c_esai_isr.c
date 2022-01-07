
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct platform_device {int dev; } ;
struct fsl_esai {int task; scalar_t__ reset_at_xrun; int regmap; struct platform_device* pdev; } ;
typedef int irqreturn_t ;


 int ESAI_ESR_RDE_MASK ;
 int ESAI_ESR_RD_MASK ;
 int ESAI_ESR_RED_MASK ;
 int ESAI_ESR_RFF_MASK ;
 int ESAI_ESR_RLS_MASK ;
 int ESAI_ESR_TDE_MASK ;
 int ESAI_ESR_TD_MASK ;
 int ESAI_ESR_TED_MASK ;
 int ESAI_ESR_TFE_MASK ;
 int ESAI_ESR_TINIT_MASK ;
 int ESAI_ESR_TLS_MASK ;
 int ESAI_SAISR_ROE ;
 int ESAI_SAISR_TUE ;
 int IRQ_HANDLED ;
 int REG_ESAI_ESR ;
 int REG_ESAI_SAISR ;
 int dev_dbg (int *,char*) ;
 int dev_warn (int *,char*) ;
 int regmap_read (int ,int ,int*) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t esai_isr(int irq, void *devid)
{
 struct fsl_esai *esai_priv = (struct fsl_esai *)devid;
 struct platform_device *pdev = esai_priv->pdev;
 u32 esr;
 u32 saisr;

 regmap_read(esai_priv->regmap, REG_ESAI_ESR, &esr);
 regmap_read(esai_priv->regmap, REG_ESAI_SAISR, &saisr);

 if ((saisr & (ESAI_SAISR_TUE | ESAI_SAISR_ROE)) &&
     esai_priv->reset_at_xrun) {
  dev_dbg(&pdev->dev, "reset module for xrun\n");
  tasklet_schedule(&esai_priv->task);
 }

 if (esr & ESAI_ESR_TINIT_MASK)
  dev_dbg(&pdev->dev, "isr: Transmission Initialized\n");

 if (esr & ESAI_ESR_RFF_MASK)
  dev_warn(&pdev->dev, "isr: Receiving overrun\n");

 if (esr & ESAI_ESR_TFE_MASK)
  dev_warn(&pdev->dev, "isr: Transmission underrun\n");

 if (esr & ESAI_ESR_TLS_MASK)
  dev_dbg(&pdev->dev, "isr: Just transmitted the last slot\n");

 if (esr & ESAI_ESR_TDE_MASK)
  dev_dbg(&pdev->dev, "isr: Transmission data exception\n");

 if (esr & ESAI_ESR_TED_MASK)
  dev_dbg(&pdev->dev, "isr: Transmitting even slots\n");

 if (esr & ESAI_ESR_TD_MASK)
  dev_dbg(&pdev->dev, "isr: Transmitting data\n");

 if (esr & ESAI_ESR_RLS_MASK)
  dev_dbg(&pdev->dev, "isr: Just received the last slot\n");

 if (esr & ESAI_ESR_RDE_MASK)
  dev_dbg(&pdev->dev, "isr: Receiving data exception\n");

 if (esr & ESAI_ESR_RED_MASK)
  dev_dbg(&pdev->dev, "isr: Receiving even slots\n");

 if (esr & ESAI_ESR_RD_MASK)
  dev_dbg(&pdev->dev, "isr: Receiving data\n");

 return IRQ_HANDLED;
}
