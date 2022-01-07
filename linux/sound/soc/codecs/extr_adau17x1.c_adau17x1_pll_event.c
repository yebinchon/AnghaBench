
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct adau {int* pll_regs; int regmap; } ;


 int ADAU17X1_CLOCK_CONTROL ;
 int ADAU17X1_CLOCK_CONTROL_CORECLK_SRC_PLL ;
 int ADAU17X1_PLL_CONTROL ;
 int ARRAY_SIZE (int*) ;
 scalar_t__ SND_SOC_DAPM_EVENT_ON (int) ;
 int mdelay (int) ;
 int regmap_raw_write (int ,int ,int*,int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct adau* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int adau17x1_pll_event(struct snd_soc_dapm_widget *w,
 struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct adau *adau = snd_soc_component_get_drvdata(component);

 if (SND_SOC_DAPM_EVENT_ON(event)) {
  adau->pll_regs[5] = 1;
 } else {
  adau->pll_regs[5] = 0;


  regmap_update_bits(adau->regmap, ADAU17X1_CLOCK_CONTROL,
   ADAU17X1_CLOCK_CONTROL_CORECLK_SRC_PLL, 0);
 }


 regmap_raw_write(adau->regmap, ADAU17X1_PLL_CONTROL,
   adau->pll_regs, ARRAY_SIZE(adau->pll_regs));

 if (SND_SOC_DAPM_EVENT_ON(event)) {
  mdelay(5);
  regmap_update_bits(adau->regmap, ADAU17X1_CLOCK_CONTROL,
   ADAU17X1_CLOCK_CONTROL_CORECLK_SRC_PLL,
   ADAU17X1_CLOCK_CONTROL_CORECLK_SRC_PLL);
 }

 return 0;
}
