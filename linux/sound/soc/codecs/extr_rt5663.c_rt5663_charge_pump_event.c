
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct rt5663_priv {int codec_ver; } ;


 int CODEC_VER_0 ;
 int RT5663_DEPOP_1 ;


 struct rt5663_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int rt5663_charge_pump_event(struct snd_soc_dapm_widget *w,
 struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct rt5663_priv *rt5663 = snd_soc_component_get_drvdata(component);

 switch (event) {
 case 128:
  if (rt5663->codec_ver == CODEC_VER_0) {
   snd_soc_component_update_bits(component, RT5663_DEPOP_1, 0x0030,
    0x0030);
   snd_soc_component_update_bits(component, RT5663_DEPOP_1, 0x0003,
    0x0003);
  }
  break;

 case 129:
  if (rt5663->codec_ver == CODEC_VER_0) {
   snd_soc_component_update_bits(component, RT5663_DEPOP_1, 0x0003, 0);
   snd_soc_component_update_bits(component, RT5663_DEPOP_1, 0x0030, 0);
  }
  break;

 default:
  return 0;
 }

 return 0;
}
