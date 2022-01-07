
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int shift; int dapm; } ;
struct snd_soc_component {int dummy; } ;






 int RT5665_ADDA_CLK_1 ;
 unsigned int RT5665_AD_MONOL_CLK_SEL_SFT ;
 unsigned int RT5665_AD_MONOR_CLK_SEL_SFT ;
 unsigned int RT5665_AD_STO1_CLK_SEL_SFT ;
 unsigned int RT5665_AD_STO2_CLK_SEL_SFT ;
 unsigned int RT5665_ASRC_2 ;
 unsigned int RT5665_ASRC_3 ;







 unsigned int RT5665_DA_MONOL_CLK_SEL_SFT ;
 unsigned int RT5665_DA_MONOR_CLK_SEL_SFT ;
 unsigned int RT5665_DA_STO1_CLK_SEL_SFT ;
 unsigned int RT5665_DA_STO2_CLK_SEL_SFT ;
 int RT5665_I2S_PD1_2 ;
 int RT5665_I2S_PD1_MASK ;
 unsigned int snd_soc_component_read32 (struct snd_soc_component*,unsigned int) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int is_using_asrc(struct snd_soc_dapm_widget *w,
    struct snd_soc_dapm_widget *sink)
{
 unsigned int reg, shift, val;
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);

 switch (w->shift) {
 case 137:
  reg = RT5665_ASRC_3;
  shift = RT5665_AD_MONOR_CLK_SEL_SFT;
  break;
 case 138:
  reg = RT5665_ASRC_3;
  shift = RT5665_AD_MONOL_CLK_SEL_SFT;
  break;
 case 136:
  reg = RT5665_ASRC_3;
  shift = RT5665_AD_STO1_CLK_SEL_SFT;
  break;
 case 135:
  reg = RT5665_ASRC_3;
  shift = RT5665_AD_STO2_CLK_SEL_SFT;
  break;
 case 130:
  reg = RT5665_ASRC_2;
  shift = RT5665_DA_MONOR_CLK_SEL_SFT;
  break;
 case 131:
  reg = RT5665_ASRC_2;
  shift = RT5665_DA_MONOL_CLK_SEL_SFT;
  break;
 case 129:
  reg = RT5665_ASRC_2;
  shift = RT5665_DA_STO1_CLK_SEL_SFT;
  break;
 case 128:
  reg = RT5665_ASRC_2;
  shift = RT5665_DA_STO2_CLK_SEL_SFT;
  break;
 default:
  return 0;
 }

 val = (snd_soc_component_read32(component, reg) >> shift) & 0xf;
 switch (val) {
 case 134:
 case 133:
 case 132:

  snd_soc_component_update_bits(component, RT5665_ADDA_CLK_1,
   RT5665_I2S_PD1_MASK, RT5665_I2S_PD1_2);
  return 1;
 default:
  return 0;
 }

}
