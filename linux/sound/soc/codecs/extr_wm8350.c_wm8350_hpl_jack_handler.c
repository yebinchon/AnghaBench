
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int work; } ;
struct wm8350_data {TYPE_1__ hpl; struct wm8350* wm8350; } ;
struct wm8350 {int dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ device_may_wakeup (int ) ;
 int msecs_to_jiffies (int) ;
 int pm_wakeup_event (int ,int) ;
 int queue_delayed_work (int ,int *,int ) ;
 int system_power_efficient_wq ;
 int trace_snd_soc_jack_irq (char*) ;

__attribute__((used)) static irqreturn_t wm8350_hpl_jack_handler(int irq, void *data)
{
 struct wm8350_data *priv = data;
 struct wm8350 *wm8350 = priv->wm8350;


 trace_snd_soc_jack_irq("WM8350 HPL");


 if (device_may_wakeup(wm8350->dev))
  pm_wakeup_event(wm8350->dev, 250);

 queue_delayed_work(system_power_efficient_wq,
      &priv->hpl.work, msecs_to_jiffies(200));

 return IRQ_HANDLED;
}
