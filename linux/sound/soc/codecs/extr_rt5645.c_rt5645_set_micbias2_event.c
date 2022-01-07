
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int RT5645_GEN_CTRL2 ;
 int RT5645_MICBIAS2_POW_CTRL_SEL_A ;
 int RT5645_MICBIAS2_POW_CTRL_SEL_M ;
 int RT5645_MICBIAS2_POW_CTRL_SEL_MASK ;


 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int rt5645_set_micbias2_event(struct snd_soc_dapm_widget *w,
  struct snd_kcontrol *k, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);

 switch (event) {
 case 128:
  snd_soc_component_update_bits(component, RT5645_GEN_CTRL2,
   RT5645_MICBIAS2_POW_CTRL_SEL_MASK,
   RT5645_MICBIAS2_POW_CTRL_SEL_M);
  break;

 case 129:
  snd_soc_component_update_bits(component, RT5645_GEN_CTRL2,
   RT5645_MICBIAS2_POW_CTRL_SEL_MASK,
   RT5645_MICBIAS2_POW_CTRL_SEL_A);
  break;

 default:
  return 0;
 }

 return 0;
}
