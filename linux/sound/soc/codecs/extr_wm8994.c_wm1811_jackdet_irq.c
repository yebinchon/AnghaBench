
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct snd_soc_component* component; } ;
struct wm8994_priv {int mic_detecting; int jack_mic; int btn_mask; TYPE_3__* micdet; int accdet_lock; int mic_work; int mic_complete_work; TYPE_1__ hubs; struct wm8994* wm8994; } ;
struct TYPE_5__ {int micdet_delay; scalar_t__ jd_ext_cap; } ;
struct wm8994 {TYPE_2__ pdata; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dev; } ;
typedef int irqreturn_t ;
struct TYPE_6__ {int jack; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int SND_JACK_HEADSET ;
 int SND_JACK_MECHANICAL ;
 int WM1811_JACKDET_CTRL ;
 int WM1811_JACKDET_DB ;
 int WM1811_JACKDET_LVL ;
 int WM1811_JACKDET_MODE_JACK ;
 int WM8958_MICB2_DISCH ;
 int WM8958_MICBIAS2 ;
 int WM8958_MICD_ENA ;
 int WM8958_MIC_DETECT_1 ;
 int cancel_delayed_work_sync (int *) ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*,int) ;
 int msecs_to_jiffies (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put (int ) ;
 int queue_delayed_work (int ,int *,int ) ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 int snd_soc_dapm_disable_pin (struct snd_soc_dapm_context*,char*) ;
 int snd_soc_jack_report (int ,int,int) ;
 int system_power_efficient_wq ;
 int wm1811_jackdet_set_mode (struct snd_soc_component*,int ) ;
 int wm8958_micd_set_rate (struct snd_soc_component*) ;

__attribute__((used)) static irqreturn_t wm1811_jackdet_irq(int irq, void *data)
{
 struct wm8994_priv *wm8994 = data;
 struct wm8994 *control = wm8994->wm8994;
 struct snd_soc_component *component = wm8994->hubs.component;
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);
 int reg, delay;
 bool present;

 pm_runtime_get_sync(component->dev);

 cancel_delayed_work_sync(&wm8994->mic_complete_work);

 mutex_lock(&wm8994->accdet_lock);

 reg = snd_soc_component_read32(component, WM1811_JACKDET_CTRL);
 if (reg < 0) {
  dev_err(component->dev, "Failed to read jack status: %d\n", reg);
  mutex_unlock(&wm8994->accdet_lock);
  pm_runtime_put(component->dev);
  return IRQ_NONE;
 }

 dev_dbg(component->dev, "JACKDET %x\n", reg);

 present = reg & WM1811_JACKDET_LVL;

 if (present) {
  dev_dbg(component->dev, "Jack detected\n");

  wm8958_micd_set_rate(component);

  snd_soc_component_update_bits(component, WM8958_MICBIAS2,
        WM8958_MICB2_DISCH, 0);


  snd_soc_component_update_bits(component, WM1811_JACKDET_CTRL,
        WM1811_JACKDET_DB, 0);

  delay = control->pdata.micdet_delay;
  queue_delayed_work(system_power_efficient_wq,
       &wm8994->mic_work,
       msecs_to_jiffies(delay));
 } else {
  dev_dbg(component->dev, "Jack not detected\n");

  cancel_delayed_work_sync(&wm8994->mic_work);

  snd_soc_component_update_bits(component, WM8958_MICBIAS2,
        WM8958_MICB2_DISCH, WM8958_MICB2_DISCH);


  snd_soc_component_update_bits(component, WM1811_JACKDET_CTRL,
        WM1811_JACKDET_DB, WM1811_JACKDET_DB);

  wm8994->mic_detecting = 0;
  wm8994->jack_mic = 0;
  snd_soc_component_update_bits(component, WM8958_MIC_DETECT_1,
        WM8958_MICD_ENA, 0);
  wm1811_jackdet_set_mode(component, WM1811_JACKDET_MODE_JACK);
 }

 mutex_unlock(&wm8994->accdet_lock);


 if (control->pdata.jd_ext_cap && !present)
  snd_soc_dapm_disable_pin(dapm, "MICBIAS2");

 if (present)
  snd_soc_jack_report(wm8994->micdet[0].jack,
        SND_JACK_MECHANICAL, SND_JACK_MECHANICAL);
 else
  snd_soc_jack_report(wm8994->micdet[0].jack, 0,
        SND_JACK_MECHANICAL | SND_JACK_HEADSET |
        wm8994->btn_mask);



 snd_soc_jack_report(wm8994->micdet[0].jack, 0, 0);

 pm_runtime_put(component->dev);
 return IRQ_HANDLED;
}
