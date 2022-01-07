
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rt298_priv {TYPE_1__* i2c; int jack; int regmap; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int IRQ_HANDLED ;
 int RT298_IRQ_CTRL ;
 int SND_JACK_HEADPHONE ;
 int SND_JACK_MICROPHONE ;
 int pm_wakeup_event (int *,int) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int rt298_jack_detect (struct rt298_priv*,int*,int*) ;
 int snd_soc_jack_report (int ,int,int) ;

__attribute__((used)) static irqreturn_t rt298_irq(int irq, void *data)
{
 struct rt298_priv *rt298 = data;
 bool hp = 0;
 bool mic = 0;
 int ret, status = 0;

 ret = rt298_jack_detect(rt298, &hp, &mic);


 regmap_update_bits(rt298->regmap, RT298_IRQ_CTRL, 0x1, 0x1);

 if (ret == 0) {
  if (hp)
   status |= SND_JACK_HEADPHONE;

  if (mic)
   status |= SND_JACK_MICROPHONE;

  snd_soc_jack_report(rt298->jack, status,
   SND_JACK_MICROPHONE | SND_JACK_HEADPHONE);

  pm_wakeup_event(&rt298->i2c->dev, 300);
 }

 return IRQ_HANDLED;
}
