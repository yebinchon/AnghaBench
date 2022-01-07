
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_jack {int status; } ;
struct snd_soc_component {int dev; } ;
struct es8316_priv {int irq; int lock; struct snd_soc_jack* jack; int jd_inverted; } ;


 int ES8316_GPIO_DEBOUNCE ;
 int ES8316_GPIO_ENABLE_INTERRUPT ;
 int SND_JACK_MICROPHONE ;
 int device_property_read_bool (int ,char*) ;
 int enable_irq (int ) ;
 int es8316_enable_micbias_for_mic_gnd_short_detect (struct snd_soc_component*) ;
 int es8316_irq (int ,struct es8316_priv*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct es8316_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static void es8316_enable_jack_detect(struct snd_soc_component *component,
          struct snd_soc_jack *jack)
{
 struct es8316_priv *es8316 = snd_soc_component_get_drvdata(component);






 es8316->jd_inverted = device_property_read_bool(component->dev,
       "everest,jack-detect-inverted");

 mutex_lock(&es8316->lock);

 es8316->jack = jack;

 if (es8316->jack->status & SND_JACK_MICROPHONE)
  es8316_enable_micbias_for_mic_gnd_short_detect(component);

 snd_soc_component_update_bits(component, ES8316_GPIO_DEBOUNCE,
          ES8316_GPIO_ENABLE_INTERRUPT,
          ES8316_GPIO_ENABLE_INTERRUPT);

 mutex_unlock(&es8316->lock);


 enable_irq(es8316->irq);
 es8316_irq(es8316->irq, es8316);
}
