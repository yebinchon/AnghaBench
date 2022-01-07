
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct rt5677_priv {int regmap; } ;


 int EINVAL ;
 unsigned int RT5677_AD_MONOL_CLK_SEL_MASK ;
 unsigned int RT5677_AD_MONOL_CLK_SEL_SFT ;
 unsigned int RT5677_AD_MONOR_CLK_SEL_MASK ;
 unsigned int RT5677_AD_MONOR_CLK_SEL_SFT ;
 unsigned int RT5677_AD_MONO_L_FILTER ;
 unsigned int RT5677_AD_MONO_R_FILTER ;
 unsigned int RT5677_AD_STEREO1_FILTER ;
 unsigned int RT5677_AD_STEREO2_FILTER ;
 unsigned int RT5677_AD_STEREO3_FILTER ;
 unsigned int RT5677_AD_STEREO4_FILTER ;
 unsigned int RT5677_AD_STO1_CLK_SEL_MASK ;
 unsigned int RT5677_AD_STO1_CLK_SEL_SFT ;
 unsigned int RT5677_AD_STO2_CLK_SEL_MASK ;
 unsigned int RT5677_AD_STO2_CLK_SEL_SFT ;
 unsigned int RT5677_AD_STO3_CLK_SEL_MASK ;
 unsigned int RT5677_AD_STO3_CLK_SEL_SFT ;
 unsigned int RT5677_AD_STO4_CLK_SEL_MASK ;
 unsigned int RT5677_AD_STO4_CLK_SEL_SFT ;
 int RT5677_ASRC_3 ;
 int RT5677_ASRC_4 ;
 int RT5677_ASRC_5 ;
 int RT5677_ASRC_6 ;
 int RT5677_ASRC_7 ;
 int RT5677_ASRC_8 ;
 unsigned int RT5677_DA_MONO2L_CLK_SEL_MASK ;
 unsigned int RT5677_DA_MONO2L_CLK_SEL_SFT ;
 unsigned int RT5677_DA_MONO2R_CLK_SEL_MASK ;
 unsigned int RT5677_DA_MONO2R_CLK_SEL_SFT ;
 unsigned int RT5677_DA_MONO2_L_FILTER ;
 unsigned int RT5677_DA_MONO2_R_FILTER ;
 unsigned int RT5677_DA_MONO3L_CLK_SEL_MASK ;
 unsigned int RT5677_DA_MONO3L_CLK_SEL_SFT ;
 unsigned int RT5677_DA_MONO3R_CLK_SEL_MASK ;
 unsigned int RT5677_DA_MONO3R_CLK_SEL_SFT ;
 unsigned int RT5677_DA_MONO3_L_FILTER ;
 unsigned int RT5677_DA_MONO3_R_FILTER ;
 unsigned int RT5677_DA_MONO4L_CLK_SEL_MASK ;
 unsigned int RT5677_DA_MONO4L_CLK_SEL_SFT ;
 unsigned int RT5677_DA_MONO4R_CLK_SEL_MASK ;
 unsigned int RT5677_DA_MONO4R_CLK_SEL_SFT ;
 unsigned int RT5677_DA_MONO4_L_FILTER ;
 unsigned int RT5677_DA_MONO4_R_FILTER ;
 unsigned int RT5677_DA_STEREO_FILTER ;
 unsigned int RT5677_DA_STO_CLK_SEL_MASK ;
 unsigned int RT5677_DA_STO_CLK_SEL_SFT ;
 unsigned int RT5677_DSP_OB_0_3_CLK_SEL_MASK ;
 unsigned int RT5677_DSP_OB_0_3_CLK_SEL_SFT ;
 unsigned int RT5677_DSP_OB_0_3_FILTER ;
 unsigned int RT5677_DSP_OB_4_7_CLK_SEL_MASK ;
 unsigned int RT5677_DSP_OB_4_7_CLK_SEL_SFT ;
 unsigned int RT5677_DSP_OB_4_7_FILTER ;
 unsigned int RT5677_I2S1_CLK_SEL_MASK ;
 unsigned int RT5677_I2S1_CLK_SEL_SFT ;
 unsigned int RT5677_I2S1_SOURCE ;
 unsigned int RT5677_I2S2_CLK_SEL_MASK ;
 unsigned int RT5677_I2S2_CLK_SEL_SFT ;
 unsigned int RT5677_I2S2_SOURCE ;
 unsigned int RT5677_I2S3_CLK_SEL_MASK ;
 unsigned int RT5677_I2S3_CLK_SEL_SFT ;
 unsigned int RT5677_I2S3_SOURCE ;
 unsigned int RT5677_I2S4_CLK_SEL_MASK ;
 unsigned int RT5677_I2S4_CLK_SEL_SFT ;
 unsigned int RT5677_I2S4_SOURCE ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;
 struct rt5677_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

int rt5677_sel_asrc_clk_src(struct snd_soc_component *component,
  unsigned int filter_mask, unsigned int clk_src)
{
 struct rt5677_priv *rt5677 = snd_soc_component_get_drvdata(component);
 unsigned int asrc3_mask = 0, asrc3_value = 0;
 unsigned int asrc4_mask = 0, asrc4_value = 0;
 unsigned int asrc5_mask = 0, asrc5_value = 0;
 unsigned int asrc6_mask = 0, asrc6_value = 0;
 unsigned int asrc7_mask = 0, asrc7_value = 0;
 unsigned int asrc8_mask = 0, asrc8_value = 0;

 switch (clk_src) {
 case 134:
 case 140:
 case 139:
 case 138:
 case 137:
 case 136:
 case 135:
 case 133:
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
  break;

 default:
  return -EINVAL;
 }


 if (filter_mask & RT5677_DA_STEREO_FILTER) {
  asrc3_mask |= RT5677_DA_STO_CLK_SEL_MASK;
  asrc3_value = (asrc3_value & ~RT5677_DA_STO_CLK_SEL_MASK)
   | (clk_src << RT5677_DA_STO_CLK_SEL_SFT);
 }

 if (filter_mask & RT5677_DA_MONO2_L_FILTER) {
  asrc3_mask |= RT5677_DA_MONO2L_CLK_SEL_MASK;
  asrc3_value = (asrc3_value & ~RT5677_DA_MONO2L_CLK_SEL_MASK)
   | (clk_src << RT5677_DA_MONO2L_CLK_SEL_SFT);
 }

 if (filter_mask & RT5677_DA_MONO2_R_FILTER) {
  asrc3_mask |= RT5677_DA_MONO2R_CLK_SEL_MASK;
  asrc3_value = (asrc3_value & ~RT5677_DA_MONO2R_CLK_SEL_MASK)
   | (clk_src << RT5677_DA_MONO2R_CLK_SEL_SFT);
 }

 if (asrc3_mask)
  regmap_update_bits(rt5677->regmap, RT5677_ASRC_3, asrc3_mask,
   asrc3_value);


 if (filter_mask & RT5677_DA_MONO3_L_FILTER) {
  asrc4_mask |= RT5677_DA_MONO3L_CLK_SEL_MASK;
  asrc4_value = (asrc4_value & ~RT5677_DA_MONO3L_CLK_SEL_MASK)
   | (clk_src << RT5677_DA_MONO3L_CLK_SEL_SFT);
 }

 if (filter_mask & RT5677_DA_MONO3_R_FILTER) {
  asrc4_mask |= RT5677_DA_MONO3R_CLK_SEL_MASK;
  asrc4_value = (asrc4_value & ~RT5677_DA_MONO3R_CLK_SEL_MASK)
   | (clk_src << RT5677_DA_MONO3R_CLK_SEL_SFT);
 }

 if (filter_mask & RT5677_DA_MONO4_L_FILTER) {
  asrc4_mask |= RT5677_DA_MONO4L_CLK_SEL_MASK;
  asrc4_value = (asrc4_value & ~RT5677_DA_MONO4L_CLK_SEL_MASK)
   | (clk_src << RT5677_DA_MONO4L_CLK_SEL_SFT);
 }

 if (filter_mask & RT5677_DA_MONO4_R_FILTER) {
  asrc4_mask |= RT5677_DA_MONO4R_CLK_SEL_MASK;
  asrc4_value = (asrc4_value & ~RT5677_DA_MONO4R_CLK_SEL_MASK)
   | (clk_src << RT5677_DA_MONO4R_CLK_SEL_SFT);
 }

 if (asrc4_mask)
  regmap_update_bits(rt5677->regmap, RT5677_ASRC_4, asrc4_mask,
   asrc4_value);


 if (filter_mask & RT5677_AD_STEREO1_FILTER) {
  asrc5_mask |= RT5677_AD_STO1_CLK_SEL_MASK;
  asrc5_value = (asrc5_value & ~RT5677_AD_STO1_CLK_SEL_MASK)
   | (clk_src << RT5677_AD_STO1_CLK_SEL_SFT);
 }

 if (filter_mask & RT5677_AD_STEREO2_FILTER) {
  asrc5_mask |= RT5677_AD_STO2_CLK_SEL_MASK;
  asrc5_value = (asrc5_value & ~RT5677_AD_STO2_CLK_SEL_MASK)
   | (clk_src << RT5677_AD_STO2_CLK_SEL_SFT);
 }

 if (filter_mask & RT5677_AD_STEREO3_FILTER) {
  asrc5_mask |= RT5677_AD_STO3_CLK_SEL_MASK;
  asrc5_value = (asrc5_value & ~RT5677_AD_STO3_CLK_SEL_MASK)
   | (clk_src << RT5677_AD_STO3_CLK_SEL_SFT);
 }

 if (filter_mask & RT5677_AD_STEREO4_FILTER) {
  asrc5_mask |= RT5677_AD_STO4_CLK_SEL_MASK;
  asrc5_value = (asrc5_value & ~RT5677_AD_STO4_CLK_SEL_MASK)
   | (clk_src << RT5677_AD_STO4_CLK_SEL_SFT);
 }

 if (asrc5_mask)
  regmap_update_bits(rt5677->regmap, RT5677_ASRC_5, asrc5_mask,
   asrc5_value);


 if (filter_mask & RT5677_AD_MONO_L_FILTER) {
  asrc6_mask |= RT5677_AD_MONOL_CLK_SEL_MASK;
  asrc6_value = (asrc6_value & ~RT5677_AD_MONOL_CLK_SEL_MASK)
   | (clk_src << RT5677_AD_MONOL_CLK_SEL_SFT);
 }

 if (filter_mask & RT5677_AD_MONO_R_FILTER) {
  asrc6_mask |= RT5677_AD_MONOR_CLK_SEL_MASK;
  asrc6_value = (asrc6_value & ~RT5677_AD_MONOR_CLK_SEL_MASK)
   | (clk_src << RT5677_AD_MONOR_CLK_SEL_SFT);
 }

 if (asrc6_mask)
  regmap_update_bits(rt5677->regmap, RT5677_ASRC_6, asrc6_mask,
   asrc6_value);


 if (filter_mask & RT5677_DSP_OB_0_3_FILTER) {
  asrc7_mask |= RT5677_DSP_OB_0_3_CLK_SEL_MASK;
  asrc7_value = (asrc7_value & ~RT5677_DSP_OB_0_3_CLK_SEL_MASK)
   | (clk_src << RT5677_DSP_OB_0_3_CLK_SEL_SFT);
 }

 if (filter_mask & RT5677_DSP_OB_4_7_FILTER) {
  asrc7_mask |= RT5677_DSP_OB_4_7_CLK_SEL_MASK;
  asrc7_value = (asrc7_value & ~RT5677_DSP_OB_4_7_CLK_SEL_MASK)
   | (clk_src << RT5677_DSP_OB_4_7_CLK_SEL_SFT);
 }

 if (asrc7_mask)
  regmap_update_bits(rt5677->regmap, RT5677_ASRC_7, asrc7_mask,
   asrc7_value);


 if (filter_mask & RT5677_I2S1_SOURCE) {
  asrc8_mask |= RT5677_I2S1_CLK_SEL_MASK;
  asrc8_value = (asrc8_value & ~RT5677_I2S1_CLK_SEL_MASK)
   | ((clk_src - 1) << RT5677_I2S1_CLK_SEL_SFT);
 }

 if (filter_mask & RT5677_I2S2_SOURCE) {
  asrc8_mask |= RT5677_I2S2_CLK_SEL_MASK;
  asrc8_value = (asrc8_value & ~RT5677_I2S2_CLK_SEL_MASK)
   | ((clk_src - 1) << RT5677_I2S2_CLK_SEL_SFT);
 }

 if (filter_mask & RT5677_I2S3_SOURCE) {
  asrc8_mask |= RT5677_I2S3_CLK_SEL_MASK;
  asrc8_value = (asrc8_value & ~RT5677_I2S3_CLK_SEL_MASK)
   | ((clk_src - 1) << RT5677_I2S3_CLK_SEL_SFT);
 }

 if (filter_mask & RT5677_I2S4_SOURCE) {
  asrc8_mask |= RT5677_I2S4_CLK_SEL_MASK;
  asrc8_value = (asrc8_value & ~RT5677_I2S4_CLK_SEL_MASK)
   | ((clk_src - 1) << RT5677_I2S4_CLK_SEL_SFT);
 }

 if (asrc8_mask)
  regmap_update_bits(rt5677->regmap, RT5677_ASRC_8, asrc8_mask,
   asrc8_value);

 return 0;
}
