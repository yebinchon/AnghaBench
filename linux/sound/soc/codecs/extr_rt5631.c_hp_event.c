
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct rt5631_priv {int codec_version; } ;




 int depop_seq_mute_stage (struct snd_soc_component*,int) ;
 int depop_seq_power_stage (struct snd_soc_component*,int) ;
 int onebit_depop_mute_stage (struct snd_soc_component*,int) ;
 int onebit_depop_power_stage (struct snd_soc_component*,int) ;
 struct rt5631_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int hp_event(struct snd_soc_dapm_widget *w,
 struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct rt5631_priv *rt5631 = snd_soc_component_get_drvdata(component);

 switch (event) {
 case 128:
  if (rt5631->codec_version) {
   onebit_depop_mute_stage(component, 0);
   onebit_depop_power_stage(component, 0);
  } else {
   depop_seq_mute_stage(component, 0);
   depop_seq_power_stage(component, 0);
  }
  break;

 case 129:
  if (rt5631->codec_version) {
   onebit_depop_power_stage(component, 1);
   onebit_depop_mute_stage(component, 1);
  } else {
   depop_seq_power_stage(component, 1);
   depop_seq_mute_stage(component, 1);
  }
  break;

 default:
  break;
 }

 return 0;
}
