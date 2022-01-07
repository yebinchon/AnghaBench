
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int shift; int dapm; } ;
struct snd_soc_component {int dummy; } ;





 int RT5659_ADDA_CLK_1 ;
 unsigned int RT5659_AD_MONO_L_T_SFT ;
 unsigned int RT5659_AD_MONO_R_T_SFT ;
 unsigned int RT5659_AD_STO1_T_SFT ;
 unsigned int RT5659_ASRC_2 ;
 unsigned int RT5659_ASRC_3 ;



 unsigned int RT5659_DA_MONO_L_T_SFT ;
 unsigned int RT5659_DA_MONO_R_T_SFT ;
 unsigned int RT5659_DA_STO_T_SFT ;
 int RT5659_I2S_PD1_2 ;
 int RT5659_I2S_PD1_MASK ;
 unsigned int snd_soc_component_read32 (struct snd_soc_component*,unsigned int) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int is_using_asrc(struct snd_soc_dapm_widget *w,
    struct snd_soc_dapm_widget *sink)
{
 unsigned int reg, shift, val;
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);

 switch (w->shift) {
 case 132:
  reg = RT5659_ASRC_3;
  shift = RT5659_AD_MONO_R_T_SFT;
  break;
 case 133:
  reg = RT5659_ASRC_3;
  shift = RT5659_AD_MONO_L_T_SFT;
  break;
 case 131:
  reg = RT5659_ASRC_2;
  shift = RT5659_AD_STO1_T_SFT;
  break;
 case 129:
  reg = RT5659_ASRC_2;
  shift = RT5659_DA_MONO_R_T_SFT;
  break;
 case 130:
  reg = RT5659_ASRC_2;
  shift = RT5659_DA_MONO_L_T_SFT;
  break;
 case 128:
  reg = RT5659_ASRC_2;
  shift = RT5659_DA_STO_T_SFT;
  break;
 default:
  return 0;
 }

 val = (snd_soc_component_read32(component, reg) >> shift) & 0xf;
 switch (val) {
 case 1:
 case 2:
 case 3:

  snd_soc_component_update_bits(component, RT5659_ADDA_CLK_1,
   RT5659_I2S_PD1_MASK, RT5659_I2S_PD1_2);
  return 1;
 default:
  return 0;
 }

}
