
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int RT5660_LOUT_AMP_CTRL ;
 int RT5660_LOUT_CB_MASK ;
 int RT5660_LOUT_CB_PD ;
 int RT5660_LOUT_CB_PU ;
 int RT5660_LOUT_CO_DIS ;
 int RT5660_LOUT_CO_EN ;
 int RT5660_LOUT_CO_MASK ;


 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int rt5660_lout_event(struct snd_soc_dapm_widget *w,
 struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);

 switch (event) {
 case 129:
  snd_soc_component_update_bits(component, RT5660_LOUT_AMP_CTRL,
   RT5660_LOUT_CO_MASK | RT5660_LOUT_CB_MASK,
   RT5660_LOUT_CO_EN | RT5660_LOUT_CB_PU);
  break;

 case 128:
  snd_soc_component_update_bits(component, RT5660_LOUT_AMP_CTRL,
   RT5660_LOUT_CO_MASK | RT5660_LOUT_CB_MASK,
   RT5660_LOUT_CO_DIS | RT5660_LOUT_CB_PD);
  break;

 default:
  return 0;
 }

 return 0;
}
