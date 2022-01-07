
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct regmap {int dummy; } ;
struct fsl_ssi {int dbg_stats; TYPE_1__* soc; struct regmap* regs; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int sisr_write_mask; } ;


 int IRQ_HANDLED ;
 int REG_SSI_SISR ;
 int fsl_ssi_dbg_isr (int *,int) ;
 int regmap_read (struct regmap*,int ,int*) ;
 int regmap_write (struct regmap*,int ,int) ;

__attribute__((used)) static irqreturn_t fsl_ssi_isr(int irq, void *dev_id)
{
 struct fsl_ssi *ssi = dev_id;
 struct regmap *regs = ssi->regs;
 u32 sisr, sisr2;

 regmap_read(regs, REG_SSI_SISR, &sisr);

 sisr2 = sisr & ssi->soc->sisr_write_mask;

 if (sisr2)
  regmap_write(regs, REG_SSI_SISR, sisr2);

 fsl_ssi_dbg_isr(&ssi->dbg_stats, sisr);

 return IRQ_HANDLED;
}
