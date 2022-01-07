
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int work; } ;
struct twl6040_data {TYPE_1__ hs_jack; } ;
struct snd_soc_component {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int msecs_to_jiffies (int) ;
 int queue_delayed_work (int ,int *,int ) ;
 struct twl6040_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int system_power_efficient_wq ;

__attribute__((used)) static irqreturn_t twl6040_audio_handler(int irq, void *data)
{
 struct snd_soc_component *component = data;
 struct twl6040_data *priv = snd_soc_component_get_drvdata(component);

 queue_delayed_work(system_power_efficient_wq,
      &priv->hs_jack.work, msecs_to_jiffies(200));

 return IRQ_HANDLED;
}
