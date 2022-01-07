
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct platform_device {int dev; } ;
struct fsl_micfil {int regmap; struct platform_device* pdev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int MICFIL_STAT_BSY_FIL_MASK ;
 int MICFIL_STAT_FIR_RDY_MASK ;
 int MICFIL_STAT_LOWFREQF_MASK ;
 int REG_MICFIL_STAT ;
 int dev_dbg (int *,char*) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write_bits (int ,int ,int,int) ;

__attribute__((used)) static irqreturn_t micfil_err_isr(int irq, void *devid)
{
 struct fsl_micfil *micfil = (struct fsl_micfil *)devid;
 struct platform_device *pdev = micfil->pdev;
 u32 stat_reg;

 regmap_read(micfil->regmap, REG_MICFIL_STAT, &stat_reg);

 if (stat_reg & MICFIL_STAT_BSY_FIL_MASK)
  dev_dbg(&pdev->dev, "isr: Decimation Filter is running\n");

 if (stat_reg & MICFIL_STAT_FIR_RDY_MASK)
  dev_dbg(&pdev->dev, "isr: FIR Filter Data ready\n");

 if (stat_reg & MICFIL_STAT_LOWFREQF_MASK) {
  dev_dbg(&pdev->dev, "isr: ipg_clk_app is too low\n");
  regmap_write_bits(micfil->regmap, REG_MICFIL_STAT,
      MICFIL_STAT_LOWFREQF_MASK, 1);
 }

 return IRQ_HANDLED;
}
