
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wm8971_priv {int charge_work; } ;
struct snd_soc_component {int dummy; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;






 int WM8971_PWR1 ;
 int cancel_delayed_work_sync (int *) ;
 int flush_delayed_work (int *) ;
 int msecs_to_jiffies (int) ;
 int queue_delayed_work (int ,int *,int ) ;
 int snd_soc_component_cache_sync (struct snd_soc_component*) ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct wm8971_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;
 int system_power_efficient_wq ;

__attribute__((used)) static int wm8971_set_bias_level(struct snd_soc_component *component,
 enum snd_soc_bias_level level)
{
 struct wm8971_priv *wm8971 = snd_soc_component_get_drvdata(component);
 u16 pwr_reg = snd_soc_component_read32(component, WM8971_PWR1) & 0xfe3e;

 switch (level) {
 case 130:

  snd_soc_component_write(component, WM8971_PWR1, pwr_reg | 0x00c1);
  break;
 case 129:

  flush_delayed_work(&wm8971->charge_work);
  break;
 case 128:
  if (snd_soc_component_get_bias_level(component) == 131) {
   snd_soc_component_cache_sync(component);

   snd_soc_component_write(component, WM8971_PWR1, pwr_reg | 0x01c0);
   queue_delayed_work(system_power_efficient_wq,
    &wm8971->charge_work, msecs_to_jiffies(1000));
  } else {

   snd_soc_component_write(component, WM8971_PWR1, pwr_reg | 0x0140);
  }

  break;
 case 131:
  cancel_delayed_work_sync(&wm8971->charge_work);
  snd_soc_component_write(component, WM8971_PWR1, 0x0001);
  break;
 }
 return 0;
}
