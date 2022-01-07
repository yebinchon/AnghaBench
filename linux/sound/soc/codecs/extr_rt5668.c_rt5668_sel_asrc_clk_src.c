
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;


 int EINVAL ;
 unsigned int RT5668_AD_STEREO1_FILTER ;



 unsigned int RT5668_DA_STEREO1_FILTER ;
 int RT5668_FILTER_CLK_SEL_MASK ;
 unsigned int RT5668_FILTER_CLK_SEL_SFT ;
 int RT5668_PLL_TRACK_2 ;
 int RT5668_PLL_TRACK_3 ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,unsigned int) ;

int rt5668_sel_asrc_clk_src(struct snd_soc_component *component,
  unsigned int filter_mask, unsigned int clk_src)
{

 switch (clk_src) {
 case 128:
 case 130:
 case 129:
  break;

 default:
  return -EINVAL;
 }

 if (filter_mask & RT5668_DA_STEREO1_FILTER) {
  snd_soc_component_update_bits(component, RT5668_PLL_TRACK_2,
   RT5668_FILTER_CLK_SEL_MASK,
   clk_src << RT5668_FILTER_CLK_SEL_SFT);
 }

 if (filter_mask & RT5668_AD_STEREO1_FILTER) {
  snd_soc_component_update_bits(component, RT5668_PLL_TRACK_3,
   RT5668_FILTER_CLK_SEL_MASK,
   clk_src << RT5668_FILTER_CLK_SEL_SFT);
 }

 return 0;
}
