
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {int dummy; } ;
struct omap_mcbsp_reg_cfg {int spcr2; int xccr; int rccr; int pcr0; int srgr2; int xcr2; int rcr2; int spcr1; } ;
struct omap_mcbsp {unsigned int fmt; TYPE_1__* pdata; scalar_t__ configured; struct omap_mcbsp_reg_cfg cfg_regs; } ;
struct TYPE_2__ {scalar_t__ has_ccr; } ;


 int CLKRM ;
 int CLKRP ;
 int CLKXM ;
 int CLKXP ;
 int DXENDLY (int) ;
 int EINVAL ;
 int FREE ;
 int FSGM ;
 int FSRM ;
 int FSRP ;
 int FSXM ;
 int FSXP ;
 int RDATDLY (int) ;
 int RDISABLE ;
 int RDMAEN ;
 int RFIG ;
 int RFULL_CYCLE ;
 int RINTM (int) ;
 int RJUST (int) ;





 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;



 unsigned int SND_SOC_DAIFMT_INV_MASK ;

 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;


 int XDATDLY (int) ;
 int XDISABLE ;
 int XDMAEN ;
 int XFIG ;
 int XINTM (int) ;
 int memset (struct omap_mcbsp_reg_cfg*,int ,int) ;
 struct omap_mcbsp* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int omap_mcbsp_dai_set_dai_fmt(struct snd_soc_dai *cpu_dai,
          unsigned int fmt)
{
 struct omap_mcbsp *mcbsp = snd_soc_dai_get_drvdata(cpu_dai);
 struct omap_mcbsp_reg_cfg *regs = &mcbsp->cfg_regs;
 bool inv_fs = 0;

 if (mcbsp->configured)
  return 0;

 mcbsp->fmt = fmt;
 memset(regs, 0, sizeof(*regs));

 regs->spcr2 |= XINTM(3) | FREE;
 regs->spcr1 |= RINTM(3);

 if (!mcbsp->pdata->has_ccr) {
  regs->rcr2 |= RFIG;
  regs->xcr2 |= XFIG;
 }


 if (mcbsp->pdata->has_ccr) {
  regs->xccr = DXENDLY(1) | XDMAEN | XDISABLE;
  regs->rccr = RFULL_CYCLE | RDMAEN | RDISABLE;
 }

 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 133:

  regs->rcr2 |= RDATDLY(1);
  regs->xcr2 |= XDATDLY(1);
  break;
 case 130:

  regs->rcr2 |= RDATDLY(0);
  regs->xcr2 |= XDATDLY(0);
  regs->spcr1 |= RJUST(2);

  inv_fs = 1;
  break;
 case 135:

  regs->rcr2 |= RDATDLY(1);
  regs->xcr2 |= XDATDLY(1);

  inv_fs = 1;
  break;
 case 134:

  regs->rcr2 |= RDATDLY(0);
  regs->xcr2 |= XDATDLY(0);

  inv_fs = 1;
  break;
 default:

  return -EINVAL;
 }

 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 136:

  regs->pcr0 |= FSXM | FSRM |
       CLKXM | CLKRM;

  regs->srgr2 |= FSGM;
  break;
 case 137:

  regs->srgr2 |= FSGM;
  regs->pcr0 |= FSXM | FSRM;
  break;
 case 138:

  break;
 default:

  return -EINVAL;
 }


 switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
 case 128:





  regs->pcr0 |= FSXP | FSRP |
       CLKXP | CLKRP;
  break;
 case 129:
  regs->pcr0 |= CLKXP | CLKRP;
  break;
 case 131:
  regs->pcr0 |= FSXP | FSRP;
  break;
 case 132:
  break;
 default:
  return -EINVAL;
 }
 if (inv_fs == 1)
  regs->pcr0 ^= FSXP | FSRP;

 return 0;
}
