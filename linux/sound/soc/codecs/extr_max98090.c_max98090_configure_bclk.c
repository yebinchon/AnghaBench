
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct max98090_priv {scalar_t__ sysclk; int lrclk; int bclk; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 int M98090_FREQ_MASK ;
 int M98090_FREQ_SHIFT ;
 int M98090_MAS_MASK ;
 int M98090_REG_CLOCK_MODE ;
 int M98090_REG_CLOCK_RATIO_MI_LSB ;
 int M98090_REG_CLOCK_RATIO_MI_MSB ;
 int M98090_REG_CLOCK_RATIO_NI_LSB ;
 int M98090_REG_CLOCK_RATIO_NI_MSB ;
 int M98090_REG_MASTER_MODE ;
 int M98090_USE_M1_MASK ;
 int M98090_USE_M1_SHIFT ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*,...) ;
 int do_div (unsigned long long,unsigned long long) ;
 int* lrclk_rates ;
 int* mi_value ;
 int* ni_value ;
 scalar_t__* pclk_rates ;
 struct max98090_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,unsigned long long) ;
 int* user_lrclk_rates ;
 scalar_t__* user_pclk_rates ;

__attribute__((used)) static void max98090_configure_bclk(struct snd_soc_component *component)
{
 struct max98090_priv *max98090 = snd_soc_component_get_drvdata(component);
 unsigned long long ni;
 int i;

 if (!max98090->sysclk) {
  dev_err(component->dev, "No SYSCLK configured\n");
  return;
 }

 if (!max98090->bclk || !max98090->lrclk) {
  dev_err(component->dev, "No audio clocks configured\n");
  return;
 }


 if (!(snd_soc_component_read32(component, M98090_REG_MASTER_MODE) &
  M98090_MAS_MASK)) {
  return;
 }


 for (i = 0; i < ARRAY_SIZE(pclk_rates); i++) {
  if ((pclk_rates[i] == max98090->sysclk) &&
   (lrclk_rates[i] == max98090->lrclk)) {
   dev_dbg(component->dev,
    "Found supported PCLK to LRCLK rates 0x%x\n",
    i + 0x8);

   snd_soc_component_update_bits(component, M98090_REG_CLOCK_MODE,
    M98090_FREQ_MASK,
    (i + 0x8) << M98090_FREQ_SHIFT);
   snd_soc_component_update_bits(component, M98090_REG_CLOCK_MODE,
    M98090_USE_M1_MASK, 0);
   return;
  }
 }


 for (i = 0; i < ARRAY_SIZE(user_pclk_rates); i++) {
  if ((user_pclk_rates[i] == max98090->sysclk) &&
   (user_lrclk_rates[i] == max98090->lrclk)) {
   dev_dbg(component->dev,
    "Found user supported PCLK to LRCLK rates\n");
   dev_dbg(component->dev, "i %d ni %lld mi %lld\n",
    i, ni_value[i], mi_value[i]);

   snd_soc_component_update_bits(component, M98090_REG_CLOCK_MODE,
    M98090_FREQ_MASK, 0);
   snd_soc_component_update_bits(component, M98090_REG_CLOCK_MODE,
    M98090_USE_M1_MASK,
     1 << M98090_USE_M1_SHIFT);

   snd_soc_component_write(component, M98090_REG_CLOCK_RATIO_NI_MSB,
    (ni_value[i] >> 8) & 0x7F);
   snd_soc_component_write(component, M98090_REG_CLOCK_RATIO_NI_LSB,
    ni_value[i] & 0xFF);
   snd_soc_component_write(component, M98090_REG_CLOCK_RATIO_MI_MSB,
    (mi_value[i] >> 8) & 0x7F);
   snd_soc_component_write(component, M98090_REG_CLOCK_RATIO_MI_LSB,
    mi_value[i] & 0xFF);

   return;
  }
 }




 snd_soc_component_update_bits(component, M98090_REG_CLOCK_MODE,
  M98090_FREQ_MASK, 0);
 snd_soc_component_update_bits(component, M98090_REG_CLOCK_MODE,
  M98090_USE_M1_MASK, 0);






 ni = 65536ULL * (max98090->lrclk < 50000 ? 96ULL : 48ULL)
   * (unsigned long long int)max98090->lrclk;
 do_div(ni, (unsigned long long int)max98090->sysclk);
 dev_info(component->dev, "No better method found\n");
 dev_info(component->dev, "Calculating ni %lld with mi 65536\n", ni);
 snd_soc_component_write(component, M98090_REG_CLOCK_RATIO_NI_MSB,
  (ni >> 8) & 0x7F);
 snd_soc_component_write(component, M98090_REG_CLOCK_RATIO_NI_LSB, ni & 0xFF);
}
