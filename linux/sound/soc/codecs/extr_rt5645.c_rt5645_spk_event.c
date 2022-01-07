
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int RT5645_DET_CLK_DIS ;
 int RT5645_DET_CLK_MASK ;
 int RT5645_DET_CLK_MODE1 ;
 int RT5645_EQ_CTRL2 ;
 int RT5645_GEN_CTRL3 ;
 int RT5645_PWR_CLS_D ;
 int RT5645_PWR_CLS_D_L ;
 int RT5645_PWR_CLS_D_R ;
 int RT5645_PWR_DIG1 ;


 int rt5645_enable_hweq (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int ) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int rt5645_spk_event(struct snd_soc_dapm_widget *w,
 struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);

 switch (event) {
 case 129:
  rt5645_enable_hweq(component);
  snd_soc_component_update_bits(component, RT5645_PWR_DIG1,
   RT5645_PWR_CLS_D | RT5645_PWR_CLS_D_R |
   RT5645_PWR_CLS_D_L,
   RT5645_PWR_CLS_D | RT5645_PWR_CLS_D_R |
   RT5645_PWR_CLS_D_L);
  snd_soc_component_update_bits(component, RT5645_GEN_CTRL3,
   RT5645_DET_CLK_MASK, RT5645_DET_CLK_MODE1);
  break;

 case 128:
  snd_soc_component_update_bits(component, RT5645_GEN_CTRL3,
   RT5645_DET_CLK_MASK, RT5645_DET_CLK_DIS);
  snd_soc_component_write(component, RT5645_EQ_CTRL2, 0);
  snd_soc_component_update_bits(component, RT5645_PWR_DIG1,
   RT5645_PWR_CLS_D | RT5645_PWR_CLS_D_R |
   RT5645_PWR_CLS_D_L, 0);
  break;

 default:
  return 0;
 }

 return 0;
}
