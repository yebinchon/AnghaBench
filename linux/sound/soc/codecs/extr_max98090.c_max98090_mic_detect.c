
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_jack {int dummy; } ;
struct snd_soc_component {int dev; } ;
struct max98090_priv {int jack_work; struct snd_soc_jack* jack; } ;


 int M98090_IJDET_MASK ;
 int M98090_IJDET_SHIFT ;
 int M98090_REG_INTERRUPT_S ;
 int SND_JACK_BTN_0 ;
 int SND_JACK_HEADSET ;
 int dev_dbg (int ,char*) ;
 int msecs_to_jiffies (int) ;
 int queue_delayed_work (int ,int *,int ) ;
 struct max98090_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int) ;
 int snd_soc_jack_report (struct snd_soc_jack*,int ,int) ;
 int system_power_efficient_wq ;

int max98090_mic_detect(struct snd_soc_component *component,
 struct snd_soc_jack *jack)
{
 struct max98090_priv *max98090 = snd_soc_component_get_drvdata(component);

 dev_dbg(component->dev, "max98090_mic_detect\n");

 max98090->jack = jack;
 if (jack) {
  snd_soc_component_update_bits(component, M98090_REG_INTERRUPT_S,
   M98090_IJDET_MASK,
   1 << M98090_IJDET_SHIFT);
 } else {
  snd_soc_component_update_bits(component, M98090_REG_INTERRUPT_S,
   M98090_IJDET_MASK,
   0);
 }


 snd_soc_jack_report(max98090->jack, 0,
       SND_JACK_HEADSET | SND_JACK_BTN_0);

 queue_delayed_work(system_power_efficient_wq,
      &max98090->jack_work,
      msecs_to_jiffies(100));

 return 0;
}
