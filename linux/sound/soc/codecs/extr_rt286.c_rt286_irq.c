
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rt286_priv {TYPE_1__* i2c; int jack; int regmap; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int IRQ_HANDLED ;
 int RT286_IRQ_CTRL ;
 int SND_JACK_HEADPHONE ;
 int SND_JACK_MICROPHONE ;
 int pm_wakeup_event (int *,int) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int rt286_jack_detect (struct rt286_priv*,int*,int*) ;
 int snd_soc_jack_report (int ,int,int) ;

__attribute__((used)) static irqreturn_t rt286_irq(int irq, void *data)
{
 struct rt286_priv *rt286 = data;
 bool hp = 0;
 bool mic = 0;
 int status = 0;

 rt286_jack_detect(rt286, &hp, &mic);


 regmap_update_bits(rt286->regmap, RT286_IRQ_CTRL, 0x1, 0x1);

 if (hp)
  status |= SND_JACK_HEADPHONE;

 if (mic)
  status |= SND_JACK_MICROPHONE;

 snd_soc_jack_report(rt286->jack, status,
  SND_JACK_MICROPHONE | SND_JACK_HEADPHONE);

 pm_wakeup_event(&rt286->i2c->dev, 300);

 return IRQ_HANDLED;
}
