
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_component {int dev; } ;
struct es8316_priv {int lock; TYPE_1__* jack; scalar_t__ jd_inverted; int regmap; struct snd_soc_component* component; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int status; } ;


 int ES8316_GPIO_FLAG ;
 unsigned int ES8316_GPIO_FLAG_GM_NOT_SHORTED ;
 unsigned int ES8316_GPIO_FLAG_HP_NOT_INSERTED ;
 int IRQ_HANDLED ;
 int SND_JACK_BTN_0 ;
 int SND_JACK_HEADPHONE ;
 int SND_JACK_HEADSET ;
 int SND_JACK_MICROPHONE ;
 int dev_dbg (int ,char*,...) ;
 int es8316_disable_micbias_for_mic_gnd_short_detect (struct snd_soc_component*) ;
 int es8316_enable_micbias_for_mic_gnd_short_detect (struct snd_soc_component*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int snd_soc_jack_report (TYPE_1__*,int,int) ;

__attribute__((used)) static irqreturn_t es8316_irq(int irq, void *data)
{
 struct es8316_priv *es8316 = data;
 struct snd_soc_component *comp = es8316->component;
 unsigned int flags;

 mutex_lock(&es8316->lock);

 regmap_read(es8316->regmap, ES8316_GPIO_FLAG, &flags);
 if (flags == 0x00)
  goto out;


 if (!es8316->jack)
  goto out;

 if (es8316->jd_inverted)
  flags ^= ES8316_GPIO_FLAG_HP_NOT_INSERTED;

 dev_dbg(comp->dev, "gpio flags %#04x\n", flags);
 if (flags & ES8316_GPIO_FLAG_HP_NOT_INSERTED) {

  if (es8316->jack->status & SND_JACK_MICROPHONE)
   es8316_disable_micbias_for_mic_gnd_short_detect(comp);

  if (es8316->jack->status & SND_JACK_HEADPHONE) {
   snd_soc_jack_report(es8316->jack, 0,
         SND_JACK_HEADSET | SND_JACK_BTN_0);
   dev_dbg(comp->dev, "jack unplugged\n");
  }
 } else if (!(es8316->jack->status & SND_JACK_HEADPHONE)) {

  es8316_enable_micbias_for_mic_gnd_short_detect(comp);
  regmap_read(es8316->regmap, ES8316_GPIO_FLAG, &flags);
  if (es8316->jd_inverted)
   flags ^= ES8316_GPIO_FLAG_HP_NOT_INSERTED;
  dev_dbg(comp->dev, "gpio flags %#04x\n", flags);
  if (flags & ES8316_GPIO_FLAG_HP_NOT_INSERTED) {

   es8316_disable_micbias_for_mic_gnd_short_detect(comp);
  } else if (flags & ES8316_GPIO_FLAG_GM_NOT_SHORTED) {

   snd_soc_jack_report(es8316->jack,
         SND_JACK_HEADSET,
         SND_JACK_HEADSET);

  } else {

   snd_soc_jack_report(es8316->jack,
         SND_JACK_HEADPHONE,
         SND_JACK_HEADSET);

   es8316_disable_micbias_for_mic_gnd_short_detect(comp);
  }
 } else if (es8316->jack->status & SND_JACK_MICROPHONE) {

  if (flags & ES8316_GPIO_FLAG_GM_NOT_SHORTED) {

   snd_soc_jack_report(es8316->jack, 0, SND_JACK_BTN_0);
  } else {

   snd_soc_jack_report(es8316->jack,
         SND_JACK_BTN_0,
         SND_JACK_BTN_0);
  }
 }

out:
 mutex_unlock(&es8316->lock);
 return IRQ_HANDLED;
}
