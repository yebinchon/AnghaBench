
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlv320dac33_priv {int substream; } ;
struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;




 int dac33_calculate_times (int ,struct snd_soc_component*) ;
 int dac33_disable_digital (struct snd_soc_component*) ;
 int dac33_prepare_chip (int ,struct snd_soc_component*) ;
 int likely (int ) ;
 struct tlv320dac33_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int dac33_playback_event(struct snd_soc_dapm_widget *w,
  struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct tlv320dac33_priv *dac33 = snd_soc_component_get_drvdata(component);

 switch (event) {
 case 128:
  if (likely(dac33->substream)) {
   dac33_calculate_times(dac33->substream, component);
   dac33_prepare_chip(dac33->substream, component);
  }
  break;
 case 129:
  dac33_disable_digital(component);
  break;
 }
 return 0;
}
