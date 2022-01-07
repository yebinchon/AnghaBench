
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_soc_dai {int dummy; } ;
struct davinci_mcasp {int bclk_master; unsigned int dai_fmt; int dev; int pdir; } ;


 int ACLKRE ;
 int ACLKRPOL ;
 int ACLKXE ;
 int ACLKXPOL ;
 int AFSRE ;
 int AFSXE ;
 int DAVINCI_MCASP_ACLKRCTL_REG ;
 int DAVINCI_MCASP_ACLKXCTL_REG ;
 int DAVINCI_MCASP_RXFMCTL_REG ;
 int DAVINCI_MCASP_RXFMT_REG ;
 int DAVINCI_MCASP_TXFMCTL_REG ;
 int DAVINCI_MCASP_TXFMT_REG ;
 int EINVAL ;
 int FSRDLY (int) ;
 int FSRDUR ;
 int FSRPOL ;
 int FSXDLY (int) ;
 int FSXDUR ;
 int FSXPOL ;
 int PIN_BIT_ACLKR ;
 int PIN_BIT_ACLKX ;
 int PIN_BIT_AFSR ;
 int PIN_BIT_AFSX ;







 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;



 unsigned int SND_SOC_DAIFMT_INV_MASK ;

 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;



 int clear_bit (int ,int *) ;
 int mcasp_clr_bits (struct davinci_mcasp*,int ,int ) ;
 int mcasp_mod_bits (struct davinci_mcasp*,int ,int ,int ) ;
 int mcasp_set_bits (struct davinci_mcasp*,int ,int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put (int ) ;
 int set_bit (int ,int *) ;
 struct davinci_mcasp* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int davinci_mcasp_set_dai_fmt(struct snd_soc_dai *cpu_dai,
      unsigned int fmt)
{
 struct davinci_mcasp *mcasp = snd_soc_dai_get_drvdata(cpu_dai);
 int ret = 0;
 u32 data_delay;
 bool fs_pol_rising;
 bool inv_fs = 0;

 if (!fmt)
  return 0;

 pm_runtime_get_sync(mcasp->dev);
 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 136:
  mcasp_clr_bits(mcasp, DAVINCI_MCASP_TXFMCTL_REG, FSXDUR);
  mcasp_clr_bits(mcasp, DAVINCI_MCASP_RXFMCTL_REG, FSRDUR);

  data_delay = 1;
  break;
 case 135:
 case 141:
  mcasp_clr_bits(mcasp, DAVINCI_MCASP_TXFMCTL_REG, FSXDUR);
  mcasp_clr_bits(mcasp, DAVINCI_MCASP_RXFMCTL_REG, FSRDUR);

  data_delay = 0;
  break;
 case 134:

  mcasp_set_bits(mcasp, DAVINCI_MCASP_TXFMCTL_REG, FSXDUR);
  mcasp_set_bits(mcasp, DAVINCI_MCASP_RXFMCTL_REG, FSRDUR);

  data_delay = 1;

  inv_fs = 1;
  break;
 case 128:
 case 131:

  mcasp_set_bits(mcasp, DAVINCI_MCASP_TXFMCTL_REG, FSXDUR);
  mcasp_set_bits(mcasp, DAVINCI_MCASP_RXFMCTL_REG, FSRDUR);

  data_delay = 0;
  break;
 default:
  ret = -EINVAL;
  goto out;
 }

 mcasp_mod_bits(mcasp, DAVINCI_MCASP_TXFMT_REG, FSXDLY(data_delay),
         FSXDLY(3));
 mcasp_mod_bits(mcasp, DAVINCI_MCASP_RXFMT_REG, FSRDLY(data_delay),
         FSRDLY(3));

 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 137:

  mcasp_set_bits(mcasp, DAVINCI_MCASP_ACLKXCTL_REG, ACLKXE);
  mcasp_set_bits(mcasp, DAVINCI_MCASP_TXFMCTL_REG, AFSXE);

  mcasp_set_bits(mcasp, DAVINCI_MCASP_ACLKRCTL_REG, ACLKRE);
  mcasp_set_bits(mcasp, DAVINCI_MCASP_RXFMCTL_REG, AFSRE);


  set_bit(PIN_BIT_ACLKX, &mcasp->pdir);
  set_bit(PIN_BIT_ACLKR, &mcasp->pdir);

  set_bit(PIN_BIT_AFSX, &mcasp->pdir);
  set_bit(PIN_BIT_AFSR, &mcasp->pdir);

  mcasp->bclk_master = 1;
  break;
 case 138:

  mcasp_set_bits(mcasp, DAVINCI_MCASP_ACLKXCTL_REG, ACLKXE);
  mcasp_clr_bits(mcasp, DAVINCI_MCASP_TXFMCTL_REG, AFSXE);

  mcasp_set_bits(mcasp, DAVINCI_MCASP_ACLKRCTL_REG, ACLKRE);
  mcasp_clr_bits(mcasp, DAVINCI_MCASP_RXFMCTL_REG, AFSRE);


  set_bit(PIN_BIT_ACLKX, &mcasp->pdir);
  set_bit(PIN_BIT_ACLKR, &mcasp->pdir);

  clear_bit(PIN_BIT_AFSX, &mcasp->pdir);
  clear_bit(PIN_BIT_AFSR, &mcasp->pdir);

  mcasp->bclk_master = 1;
  break;
 case 139:

  mcasp_clr_bits(mcasp, DAVINCI_MCASP_ACLKXCTL_REG, ACLKXE);
  mcasp_set_bits(mcasp, DAVINCI_MCASP_TXFMCTL_REG, AFSXE);

  mcasp_clr_bits(mcasp, DAVINCI_MCASP_ACLKRCTL_REG, ACLKRE);
  mcasp_set_bits(mcasp, DAVINCI_MCASP_RXFMCTL_REG, AFSRE);


  clear_bit(PIN_BIT_ACLKX, &mcasp->pdir);
  clear_bit(PIN_BIT_ACLKR, &mcasp->pdir);

  set_bit(PIN_BIT_AFSX, &mcasp->pdir);
  set_bit(PIN_BIT_AFSR, &mcasp->pdir);

  mcasp->bclk_master = 0;
  break;
 case 140:

  mcasp_clr_bits(mcasp, DAVINCI_MCASP_ACLKXCTL_REG, ACLKXE);
  mcasp_clr_bits(mcasp, DAVINCI_MCASP_TXFMCTL_REG, AFSXE);

  mcasp_clr_bits(mcasp, DAVINCI_MCASP_ACLKRCTL_REG, ACLKRE);
  mcasp_clr_bits(mcasp, DAVINCI_MCASP_RXFMCTL_REG, AFSRE);


  clear_bit(PIN_BIT_ACLKX, &mcasp->pdir);
  clear_bit(PIN_BIT_ACLKR, &mcasp->pdir);

  clear_bit(PIN_BIT_AFSX, &mcasp->pdir);
  clear_bit(PIN_BIT_AFSR, &mcasp->pdir);

  mcasp->bclk_master = 0;
  break;
 default:
  ret = -EINVAL;
  goto out;
 }

 switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
 case 132:
  mcasp_clr_bits(mcasp, DAVINCI_MCASP_ACLKXCTL_REG, ACLKXPOL);
  mcasp_clr_bits(mcasp, DAVINCI_MCASP_ACLKRCTL_REG, ACLKRPOL);
  fs_pol_rising = 1;
  break;
 case 130:
  mcasp_set_bits(mcasp, DAVINCI_MCASP_ACLKXCTL_REG, ACLKXPOL);
  mcasp_set_bits(mcasp, DAVINCI_MCASP_ACLKRCTL_REG, ACLKRPOL);
  fs_pol_rising = 0;
  break;
 case 133:
  mcasp_clr_bits(mcasp, DAVINCI_MCASP_ACLKXCTL_REG, ACLKXPOL);
  mcasp_clr_bits(mcasp, DAVINCI_MCASP_ACLKRCTL_REG, ACLKRPOL);
  fs_pol_rising = 0;
  break;
 case 129:
  mcasp_set_bits(mcasp, DAVINCI_MCASP_ACLKXCTL_REG, ACLKXPOL);
  mcasp_set_bits(mcasp, DAVINCI_MCASP_ACLKRCTL_REG, ACLKRPOL);
  fs_pol_rising = 1;
  break;
 default:
  ret = -EINVAL;
  goto out;
 }

 if (inv_fs)
  fs_pol_rising = !fs_pol_rising;

 if (fs_pol_rising) {
  mcasp_clr_bits(mcasp, DAVINCI_MCASP_TXFMCTL_REG, FSXPOL);
  mcasp_clr_bits(mcasp, DAVINCI_MCASP_RXFMCTL_REG, FSRPOL);
 } else {
  mcasp_set_bits(mcasp, DAVINCI_MCASP_TXFMCTL_REG, FSXPOL);
  mcasp_set_bits(mcasp, DAVINCI_MCASP_RXFMCTL_REG, FSRPOL);
 }

 mcasp->dai_fmt = fmt;
out:
 pm_runtime_put(mcasp->dev);
 return ret;
}
