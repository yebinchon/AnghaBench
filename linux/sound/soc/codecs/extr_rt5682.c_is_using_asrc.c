
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int shift; int dapm; } ;
struct snd_soc_component {int dummy; } ;






 unsigned int RT5682_FILTER_CLK_SEL_SFT ;
 unsigned int RT5682_PLL_TRACK_2 ;
 unsigned int RT5682_PLL_TRACK_3 ;
 unsigned int snd_soc_component_read32 (struct snd_soc_component*,unsigned int) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int is_using_asrc(struct snd_soc_dapm_widget *w,
    struct snd_soc_dapm_widget *sink)
{
 unsigned int reg, shift, val;
 struct snd_soc_component *component =
  snd_soc_dapm_to_component(w->dapm);

 switch (w->shift) {
 case 131:
  reg = RT5682_PLL_TRACK_3;
  shift = RT5682_FILTER_CLK_SEL_SFT;
  break;
 case 128:
  reg = RT5682_PLL_TRACK_2;
  shift = RT5682_FILTER_CLK_SEL_SFT;
  break;
 default:
  return 0;
 }

 val = (snd_soc_component_read32(component, reg) >> shift) & 0xf;
 switch (val) {
 case 130:
 case 129:
  return 1;
 default:
  return 0;
 }

}
