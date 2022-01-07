
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_jack {int status; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct rt286_priv {int regmap; struct snd_soc_jack* jack; } ;


 int RT286_IRQ_CTRL ;
 int SND_JACK_HEADPHONE ;
 int SND_JACK_MICROPHONE ;
 int regmap_update_bits (int ,int ,int,int) ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 struct rt286_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_dapm_disable_pin (struct snd_soc_dapm_context*,char*) ;
 int snd_soc_dapm_force_enable_pin (struct snd_soc_dapm_context*,char*) ;
 int snd_soc_dapm_sync (struct snd_soc_dapm_context*) ;
 int snd_soc_jack_report (struct snd_soc_jack*,int,int) ;

int rt286_mic_detect(struct snd_soc_component *component, struct snd_soc_jack *jack)
{
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);
 struct rt286_priv *rt286 = snd_soc_component_get_drvdata(component);

 rt286->jack = jack;

 if (jack) {

  if (rt286->jack->status & SND_JACK_HEADPHONE)
   snd_soc_dapm_force_enable_pin(dapm, "LDO1");
  regmap_update_bits(rt286->regmap, RT286_IRQ_CTRL, 0x2, 0x2);

  snd_soc_jack_report(rt286->jack, rt286->jack->status,
   SND_JACK_MICROPHONE | SND_JACK_HEADPHONE);
 } else {

  regmap_update_bits(rt286->regmap, RT286_IRQ_CTRL, 0x2, 0x0);
  snd_soc_dapm_disable_pin(dapm, "LDO1");
 }
 snd_soc_dapm_sync(dapm);

 return 0;
}
