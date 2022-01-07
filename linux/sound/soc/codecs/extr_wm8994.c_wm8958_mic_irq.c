
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct snd_soc_component* component; } ;
struct wm8994_priv {int btn_mask; int mic_detecting; int mic_status; int mic_complete_work; TYPE_4__* wm8994; TYPE_2__* micdet; scalar_t__ jackdet; int open_circuit_work; TYPE_1__ hubs; } ;
struct snd_soc_component {int dev; } ;
typedef int irqreturn_t ;
struct TYPE_7__ {int mic_id_delay; } ;
struct TYPE_8__ {TYPE_3__ pdata; } ;
struct TYPE_6__ {int jack; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int SND_JACK_HEADSET ;
 int SND_JACK_MECHANICAL ;
 int WM1811_JACKDET_CTRL ;
 int WM1811_JACKDET_LVL ;
 int WM8958_MICD_ENA ;
 int WM8958_MICD_LVL_MASK ;
 int WM8958_MICD_STS ;
 int WM8958_MICD_VALID ;
 int WM8958_MIC_DETECT_1 ;
 int WM8958_MIC_DETECT_3 ;
 int cancel_delayed_work_sync (int *) ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*,int) ;
 int dev_name (int ) ;
 int dev_warn (int ,char*) ;
 int msecs_to_jiffies (int) ;
 int msleep (int) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put (int ) ;
 int queue_delayed_work (int ,int *,int ) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_jack_report (int ,int ,int) ;
 int system_power_efficient_wq ;
 int trace_snd_soc_jack_irq (int ) ;
 int wm8958_button_det (struct snd_soc_component*,int) ;

__attribute__((used)) static irqreturn_t wm8958_mic_irq(int irq, void *data)
{
 struct wm8994_priv *wm8994 = data;
 struct snd_soc_component *component = wm8994->hubs.component;
 int reg, count, ret, id_delay;






 if (!(snd_soc_component_read32(component, WM8958_MIC_DETECT_1) & WM8958_MICD_ENA))
  return IRQ_HANDLED;

 cancel_delayed_work_sync(&wm8994->mic_complete_work);
 cancel_delayed_work_sync(&wm8994->open_circuit_work);

 pm_runtime_get_sync(component->dev);




 count = 10;
 do {
  reg = snd_soc_component_read32(component, WM8958_MIC_DETECT_3);
  if (reg < 0) {
   dev_err(component->dev,
    "Failed to read mic detect status: %d\n",
    reg);
   pm_runtime_put(component->dev);
   return IRQ_NONE;
  }

  if (!(reg & WM8958_MICD_VALID)) {
   dev_dbg(component->dev, "Mic detect data not valid\n");
   goto out;
  }

  if (!(reg & WM8958_MICD_STS) || (reg & WM8958_MICD_LVL_MASK))
   break;

  msleep(1);
 } while (count--);

 if (count == 0)
  dev_warn(component->dev, "No impedance range reported for jack\n");


 trace_snd_soc_jack_irq(dev_name(component->dev));



 if (wm8994->jackdet) {
  ret = snd_soc_component_read32(component, WM1811_JACKDET_CTRL);
  if (ret < 0) {
   dev_err(component->dev, "Failed to read jack status: %d\n",
    ret);
  } else if (!(ret & WM1811_JACKDET_LVL)) {
   dev_dbg(component->dev, "Ignoring removed jack\n");
   goto out;
  }
 } else if (!(reg & WM8958_MICD_STS)) {
  snd_soc_jack_report(wm8994->micdet[0].jack, 0,
        SND_JACK_MECHANICAL | SND_JACK_HEADSET |
        wm8994->btn_mask);
  wm8994->mic_detecting = 1;
  goto out;
 }

 wm8994->mic_status = reg;
 id_delay = wm8994->wm8994->pdata.mic_id_delay;

 if (wm8994->mic_detecting)
  queue_delayed_work(system_power_efficient_wq,
       &wm8994->mic_complete_work,
       msecs_to_jiffies(id_delay));
 else
  wm8958_button_det(component, reg);

out:
 pm_runtime_put(component->dev);
 return IRQ_HANDLED;
}
