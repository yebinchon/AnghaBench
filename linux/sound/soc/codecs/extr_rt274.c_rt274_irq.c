
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rt274_priv {TYPE_1__* i2c; int jack; int regmap; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int IRQ_HANDLED ;
 int RT274_EAPD_GPIO_IRQ_CTRL ;
 int RT274_IRQ_CLR ;
 int SND_JACK_HEADPHONE ;
 int SND_JACK_MICROPHONE ;
 int pm_wakeup_event (int *,int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int rt274_jack_detect (struct rt274_priv*,int*,int*) ;
 int snd_soc_jack_report (int ,int,int) ;

__attribute__((used)) static irqreturn_t rt274_irq(int irq, void *data)
{
 struct rt274_priv *rt274 = data;
 bool hp = 0;
 bool mic = 0;
 int ret, status = 0;


 regmap_update_bits(rt274->regmap, RT274_EAPD_GPIO_IRQ_CTRL,
    RT274_IRQ_CLR, RT274_IRQ_CLR);

 ret = rt274_jack_detect(rt274, &hp, &mic);

 if (ret == 0) {
  if (hp)
   status |= SND_JACK_HEADPHONE;

  if (mic)
   status |= SND_JACK_MICROPHONE;

  snd_soc_jack_report(rt274->jack, status,
   SND_JACK_MICROPHONE | SND_JACK_HEADPHONE);

  pm_wakeup_event(&rt274->i2c->dev, 300);
 }

 return IRQ_HANDLED;
}
