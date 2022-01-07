
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct davinci_mcasp {unsigned int sysclk_freq; int dev; int pdir; } ;


 int AHCLKRE ;
 int AHCLKXE ;
 int DAVINCI_MCASP_AHCLKRCTL_REG ;
 int DAVINCI_MCASP_AHCLKXCTL_REG ;
 int PIN_BIT_AHCLKX ;
 int SND_SOC_CLOCK_OUT ;
 int clear_bit (int ,int *) ;
 int mcasp_clr_bits (struct davinci_mcasp*,int ,int ) ;
 int mcasp_set_bits (struct davinci_mcasp*,int ,int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put (int ) ;
 int set_bit (int ,int *) ;
 struct davinci_mcasp* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int davinci_mcasp_set_sysclk(struct snd_soc_dai *dai, int clk_id,
        unsigned int freq, int dir)
{
 struct davinci_mcasp *mcasp = snd_soc_dai_get_drvdata(dai);

 pm_runtime_get_sync(mcasp->dev);
 if (dir == SND_SOC_CLOCK_OUT) {
  mcasp_set_bits(mcasp, DAVINCI_MCASP_AHCLKXCTL_REG, AHCLKXE);
  mcasp_set_bits(mcasp, DAVINCI_MCASP_AHCLKRCTL_REG, AHCLKRE);
  set_bit(PIN_BIT_AHCLKX, &mcasp->pdir);
 } else {
  mcasp_clr_bits(mcasp, DAVINCI_MCASP_AHCLKXCTL_REG, AHCLKXE);
  mcasp_clr_bits(mcasp, DAVINCI_MCASP_AHCLKRCTL_REG, AHCLKRE);
  clear_bit(PIN_BIT_AHCLKX, &mcasp->pdir);
 }

 mcasp->sysclk_freq = freq;

 pm_runtime_put(mcasp->dev);
 return 0;
}
