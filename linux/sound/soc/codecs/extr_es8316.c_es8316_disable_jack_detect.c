
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_component {int dummy; } ;
struct es8316_priv {int lock; TYPE_1__* jack; int irq; } ;
struct TYPE_2__ {int status; } ;


 int ES8316_GPIO_DEBOUNCE ;
 int ES8316_GPIO_ENABLE_INTERRUPT ;
 int SND_JACK_BTN_0 ;
 int SND_JACK_MICROPHONE ;
 int disable_irq (int ) ;
 int es8316_disable_micbias_for_mic_gnd_short_detect (struct snd_soc_component*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct es8316_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 int snd_soc_jack_report (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void es8316_disable_jack_detect(struct snd_soc_component *component)
{
 struct es8316_priv *es8316 = snd_soc_component_get_drvdata(component);

 disable_irq(es8316->irq);

 mutex_lock(&es8316->lock);

 snd_soc_component_update_bits(component, ES8316_GPIO_DEBOUNCE,
          ES8316_GPIO_ENABLE_INTERRUPT, 0);

 if (es8316->jack->status & SND_JACK_MICROPHONE) {
  es8316_disable_micbias_for_mic_gnd_short_detect(component);
  snd_soc_jack_report(es8316->jack, 0, SND_JACK_BTN_0);
 }

 es8316->jack = ((void*)0);

 mutex_unlock(&es8316->lock);
}
