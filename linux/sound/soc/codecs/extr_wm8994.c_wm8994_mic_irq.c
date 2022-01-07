
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct snd_soc_component* component; } ;
struct wm8994_priv {int mic_work; TYPE_1__ hubs; } ;
struct snd_soc_component {int dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int dev_name (int ) ;
 int msecs_to_jiffies (int) ;
 int pm_wakeup_event (int ,int) ;
 int queue_delayed_work (int ,int *,int ) ;
 int system_power_efficient_wq ;
 int trace_snd_soc_jack_irq (int ) ;

__attribute__((used)) static irqreturn_t wm8994_mic_irq(int irq, void *data)
{
 struct wm8994_priv *priv = data;
 struct snd_soc_component *component = priv->hubs.component;


 trace_snd_soc_jack_irq(dev_name(component->dev));


 pm_wakeup_event(component->dev, 300);

 queue_delayed_work(system_power_efficient_wq,
      &priv->mic_work, msecs_to_jiffies(250));

 return IRQ_HANDLED;
}
