
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;


 int EINVAL ;
 unsigned int RT5665_AD_MONOL_CLK_SEL_MASK ;
 unsigned int RT5665_AD_MONOL_CLK_SEL_SFT ;
 unsigned int RT5665_AD_MONOR_CLK_SEL_MASK ;
 unsigned int RT5665_AD_MONOR_CLK_SEL_SFT ;
 unsigned int RT5665_AD_MONO_L_FILTER ;
 unsigned int RT5665_AD_MONO_R_FILTER ;
 unsigned int RT5665_AD_STEREO1_FILTER ;
 unsigned int RT5665_AD_STEREO2_FILTER ;
 unsigned int RT5665_AD_STO1_CLK_SEL_MASK ;
 unsigned int RT5665_AD_STO1_CLK_SEL_SFT ;
 unsigned int RT5665_AD_STO2_CLK_SEL_MASK ;
 unsigned int RT5665_AD_STO2_CLK_SEL_SFT ;
 int RT5665_ASRC_2 ;
 int RT5665_ASRC_3 ;







 unsigned int RT5665_DA_MONOL_CLK_SEL_MASK ;
 unsigned int RT5665_DA_MONOL_CLK_SEL_SFT ;
 unsigned int RT5665_DA_MONOR_CLK_SEL_MASK ;
 unsigned int RT5665_DA_MONOR_CLK_SEL_SFT ;
 unsigned int RT5665_DA_MONO_L_FILTER ;
 unsigned int RT5665_DA_MONO_R_FILTER ;
 unsigned int RT5665_DA_STEREO1_FILTER ;
 unsigned int RT5665_DA_STEREO2_FILTER ;
 unsigned int RT5665_DA_STO1_CLK_SEL_MASK ;
 unsigned int RT5665_DA_STO1_CLK_SEL_SFT ;
 unsigned int RT5665_DA_STO2_CLK_SEL_MASK ;
 unsigned int RT5665_DA_STO2_CLK_SEL_SFT ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,unsigned int,unsigned int) ;

int rt5665_sel_asrc_clk_src(struct snd_soc_component *component,
  unsigned int filter_mask, unsigned int clk_src)
{
 unsigned int asrc2_mask = 0;
 unsigned int asrc2_value = 0;
 unsigned int asrc3_mask = 0;
 unsigned int asrc3_value = 0;

 switch (clk_src) {
 case 131:
 case 134:
 case 133:
 case 132:
 case 130:
 case 129:
 case 128:
  break;

 default:
  return -EINVAL;
 }

 if (filter_mask & RT5665_DA_STEREO1_FILTER) {
  asrc2_mask |= RT5665_DA_STO1_CLK_SEL_MASK;
  asrc2_value = (asrc2_value & ~RT5665_DA_STO1_CLK_SEL_MASK)
   | (clk_src << RT5665_DA_STO1_CLK_SEL_SFT);
 }

 if (filter_mask & RT5665_DA_STEREO2_FILTER) {
  asrc2_mask |= RT5665_DA_STO2_CLK_SEL_MASK;
  asrc2_value = (asrc2_value & ~RT5665_DA_STO2_CLK_SEL_MASK)
   | (clk_src << RT5665_DA_STO2_CLK_SEL_SFT);
 }

 if (filter_mask & RT5665_DA_MONO_L_FILTER) {
  asrc2_mask |= RT5665_DA_MONOL_CLK_SEL_MASK;
  asrc2_value = (asrc2_value & ~RT5665_DA_MONOL_CLK_SEL_MASK)
   | (clk_src << RT5665_DA_MONOL_CLK_SEL_SFT);
 }

 if (filter_mask & RT5665_DA_MONO_R_FILTER) {
  asrc2_mask |= RT5665_DA_MONOR_CLK_SEL_MASK;
  asrc2_value = (asrc2_value & ~RT5665_DA_MONOR_CLK_SEL_MASK)
   | (clk_src << RT5665_DA_MONOR_CLK_SEL_SFT);
 }

 if (filter_mask & RT5665_AD_STEREO1_FILTER) {
  asrc3_mask |= RT5665_AD_STO1_CLK_SEL_MASK;
  asrc3_value = (asrc2_value & ~RT5665_AD_STO1_CLK_SEL_MASK)
   | (clk_src << RT5665_AD_STO1_CLK_SEL_SFT);
 }

 if (filter_mask & RT5665_AD_STEREO2_FILTER) {
  asrc3_mask |= RT5665_AD_STO2_CLK_SEL_MASK;
  asrc3_value = (asrc2_value & ~RT5665_AD_STO2_CLK_SEL_MASK)
   | (clk_src << RT5665_AD_STO2_CLK_SEL_SFT);
 }

 if (filter_mask & RT5665_AD_MONO_L_FILTER) {
  asrc3_mask |= RT5665_AD_MONOL_CLK_SEL_MASK;
  asrc3_value = (asrc3_value & ~RT5665_AD_MONOL_CLK_SEL_MASK)
   | (clk_src << RT5665_AD_MONOL_CLK_SEL_SFT);
 }

 if (filter_mask & RT5665_AD_MONO_R_FILTER) {
  asrc3_mask |= RT5665_AD_MONOR_CLK_SEL_MASK;
  asrc3_value = (asrc3_value & ~RT5665_AD_MONOR_CLK_SEL_MASK)
   | (clk_src << RT5665_AD_MONOR_CLK_SEL_SFT);
 }

 if (asrc2_mask)
  snd_soc_component_update_bits(component, RT5665_ASRC_2,
   asrc2_mask, asrc2_value);

 if (asrc3_mask)
  snd_soc_component_update_bits(component, RT5665_ASRC_3,
   asrc3_mask, asrc3_value);

 return 0;
}
