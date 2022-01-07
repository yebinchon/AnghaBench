
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8994_priv {int clk_has_run; int jackdet_bootstrap; int jackdet; } ;
struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;





 int configure_clock (struct snd_soc_component*) ;
 int msecs_to_jiffies (int) ;
 int queue_delayed_work (int ,int *,int ) ;
 struct wm8994_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;
 int system_power_efficient_wq ;

__attribute__((used)) static int clk_sys_event(struct snd_soc_dapm_widget *w,
    struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct wm8994_priv *wm8994 = snd_soc_component_get_drvdata(component);

 switch (event) {
 case 128:
  return configure_clock(component);

 case 129:







  if (wm8994->jackdet && !wm8994->clk_has_run) {
   queue_delayed_work(system_power_efficient_wq,
        &wm8994->jackdet_bootstrap,
        msecs_to_jiffies(1000));
   wm8994->clk_has_run = 1;
  }
  break;

 case 130:
  configure_clock(component);
  break;
 }

 return 0;
}
