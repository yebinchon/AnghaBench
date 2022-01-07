
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct adav80x {unsigned int sysclk; int clk_src; int* sysclk_pd; int regmap; } ;
 int ADAV80X_ICLK_CTRL1 ;
 unsigned int ADAV80X_ICLK_CTRL1_ADC_SRC (int) ;
 unsigned int ADAV80X_ICLK_CTRL1_DAC_SRC (int) ;
 unsigned int ADAV80X_ICLK_CTRL1_ICLK2_SRC (int) ;
 int ADAV80X_ICLK_CTRL2 ;
 unsigned int ADAV80X_ICLK_CTRL2_ICLK1_SRC (int) ;
 int ADAV80X_PLL_OUTE ;
 unsigned int ADAV80X_PLL_OUTE_SYSCLKPD (int) ;
 int EINVAL ;
 int SND_SOC_CLOCK_IN ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;
 int regmap_write (int ,int ,unsigned int) ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 struct adav80x* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_dapm_disable_pin_unlocked (struct snd_soc_dapm_context*,char*) ;
 int snd_soc_dapm_force_enable_pin_unlocked (struct snd_soc_dapm_context*,char*) ;
 int snd_soc_dapm_mutex_lock (struct snd_soc_dapm_context*) ;
 int snd_soc_dapm_mutex_unlock (struct snd_soc_dapm_context*) ;
 int snd_soc_dapm_sync (struct snd_soc_dapm_context*) ;
 int snd_soc_dapm_sync_unlocked (struct snd_soc_dapm_context*) ;

__attribute__((used)) static int adav80x_set_sysclk(struct snd_soc_component *component,
         int clk_id, int source,
         unsigned int freq, int dir)
{
 struct adav80x *adav80x = snd_soc_component_get_drvdata(component);
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);

 if (dir == SND_SOC_CLOCK_IN) {
  switch (clk_id) {
  case 129:
  case 128:
  case 135:
  case 134:
  case 133:
   break;
  default:
   return -EINVAL;
  }

  adav80x->sysclk = freq;

  if (adav80x->clk_src != clk_id) {
   unsigned int iclk_ctrl1, iclk_ctrl2;

   adav80x->clk_src = clk_id;
   if (clk_id == 128)
    clk_id = 129;

   iclk_ctrl1 = ADAV80X_ICLK_CTRL1_DAC_SRC(clk_id) |
     ADAV80X_ICLK_CTRL1_ADC_SRC(clk_id) |
     ADAV80X_ICLK_CTRL1_ICLK2_SRC(clk_id);
   iclk_ctrl2 = ADAV80X_ICLK_CTRL2_ICLK1_SRC(clk_id);

   regmap_write(adav80x->regmap, ADAV80X_ICLK_CTRL1,
    iclk_ctrl1);
   regmap_write(adav80x->regmap, ADAV80X_ICLK_CTRL2,
    iclk_ctrl2);

   snd_soc_dapm_sync(dapm);
  }
 } else {
  unsigned int mask;

  switch (clk_id) {
  case 132:
  case 131:
  case 130:
   break;
  default:
   return -EINVAL;
  }

  clk_id -= 132;
  mask = ADAV80X_PLL_OUTE_SYSCLKPD(clk_id);

  if (freq == 0) {
   regmap_update_bits(adav80x->regmap, ADAV80X_PLL_OUTE,
    mask, mask);
   adav80x->sysclk_pd[clk_id] = 1;
  } else {
   regmap_update_bits(adav80x->regmap, ADAV80X_PLL_OUTE,
    mask, 0);
   adav80x->sysclk_pd[clk_id] = 0;
  }

  snd_soc_dapm_mutex_lock(dapm);

  if (adav80x->sysclk_pd[0])
   snd_soc_dapm_disable_pin_unlocked(dapm, "PLL1");
  else
   snd_soc_dapm_force_enable_pin_unlocked(dapm, "PLL1");

  if (adav80x->sysclk_pd[1] || adav80x->sysclk_pd[2])
   snd_soc_dapm_disable_pin_unlocked(dapm, "PLL2");
  else
   snd_soc_dapm_force_enable_pin_unlocked(dapm, "PLL2");

  snd_soc_dapm_sync_unlocked(dapm);

  snd_soc_dapm_mutex_unlock(dapm);
 }

 return 0;
}
