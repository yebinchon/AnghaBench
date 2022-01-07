
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct omap_mcbsp_reg_cfg {int pcr0; int srgr2; } ;
struct omap_mcbsp {unsigned int in_freq; scalar_t__ active; struct omap_mcbsp_reg_cfg cfg_regs; } ;


 int CLKRM ;
 int CLKSM ;
 int CLKXM ;
 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 int MCBSP_CLKS_PAD_SRC ;
 int MCBSP_CLKS_PRCM_SRC ;





 int SCLKME ;
 int mcbsp_omap1 () ;
 int omap2_mcbsp_set_clks_src (struct omap_mcbsp*,int ) ;
 struct omap_mcbsp* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int omap_mcbsp_dai_set_dai_sysclk(struct snd_soc_dai *cpu_dai,
      int clk_id, unsigned int freq,
      int dir)
{
 struct omap_mcbsp *mcbsp = snd_soc_dai_get_drvdata(cpu_dai);
 struct omap_mcbsp_reg_cfg *regs = &mcbsp->cfg_regs;
 int err = 0;

 if (mcbsp->active) {
  if (freq == mcbsp->in_freq)
   return 0;
  else
   return -EBUSY;
 }

 mcbsp->in_freq = freq;
 regs->srgr2 &= ~CLKSM;
 regs->pcr0 &= ~SCLKME;

 switch (clk_id) {
 case 132:
  regs->srgr2 |= CLKSM;
  break;
 case 129:
  if (mcbsp_omap1()) {
   err = -EINVAL;
   break;
  }
  err = omap2_mcbsp_set_clks_src(mcbsp,
            MCBSP_CLKS_PRCM_SRC);
  break;
 case 130:
  if (mcbsp_omap1()) {
   err = 0;
   break;
  }
  err = omap2_mcbsp_set_clks_src(mcbsp,
            MCBSP_CLKS_PAD_SRC);
  break;

 case 128:
  regs->srgr2 |= CLKSM;
  regs->pcr0 |= SCLKME;






  regs->pcr0 &= ~CLKXM;
  break;
 case 131:
  regs->pcr0 |= SCLKME;

  regs->pcr0 &= ~CLKRM;
  break;
 default:
  err = -ENODEV;
 }

 return err;
}
