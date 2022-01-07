
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct wm8994_priv {int mic_detecting; int jack_mic; TYPE_1__* micdet; int open_circuit_work; } ;
struct snd_soc_component {int dev; } ;
struct TYPE_2__ {int jack; } ;


 int SND_JACK_HEADPHONE ;
 int SND_JACK_HEADSET ;
 int WM8958_MICD_STS ;
 int dev_dbg (int ,char*) ;
 int msecs_to_jiffies (int) ;
 int queue_delayed_work (int ,int *,int ) ;
 struct wm8994_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_jack_report (int ,int ,int ) ;
 int system_power_efficient_wq ;
 int wm1811_micd_stop (struct snd_soc_component*) ;
 int wm8958_micd_set_rate (struct snd_soc_component*) ;

__attribute__((used)) static void wm8958_mic_id(void *data, u16 status)
{
 struct snd_soc_component *component = data;
 struct wm8994_priv *wm8994 = snd_soc_component_get_drvdata(component);


 if (!(status & WM8958_MICD_STS)) {

  dev_dbg(component->dev, "Detected open circuit\n");

  queue_delayed_work(system_power_efficient_wq,
       &wm8994->open_circuit_work,
       msecs_to_jiffies(2500));
  return;
 }




 if (status & 0x600) {
  dev_dbg(component->dev, "Detected microphone\n");

  wm8994->mic_detecting = 0;
  wm8994->jack_mic = 1;

  wm8958_micd_set_rate(component);

  snd_soc_jack_report(wm8994->micdet[0].jack, SND_JACK_HEADSET,
        SND_JACK_HEADSET);
 }


 if (status & 0xfc) {
  dev_dbg(component->dev, "Detected headphone\n");
  wm8994->mic_detecting = 0;

  wm8958_micd_set_rate(component);


  wm1811_micd_stop(component);

  snd_soc_jack_report(wm8994->micdet[0].jack, SND_JACK_HEADPHONE,
        SND_JACK_HEADSET);
 }
}
