
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_component {int dummy; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;






 int WM8750_PWR1 ;
 int msleep (int) ;
 int snd_soc_component_cache_sync (struct snd_soc_component*) ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int wm8750_set_bias_level(struct snd_soc_component *component,
     enum snd_soc_bias_level level)
{
 u16 pwr_reg = snd_soc_component_read32(component, WM8750_PWR1) & 0xfe3e;

 switch (level) {
 case 130:

  snd_soc_component_write(component, WM8750_PWR1, pwr_reg | 0x00c0);
  break;
 case 129:
  break;
 case 128:
  if (snd_soc_component_get_bias_level(component) == 131) {
   snd_soc_component_cache_sync(component);


   snd_soc_component_write(component, WM8750_PWR1, pwr_reg | 0x01c1);


   msleep(1000);
  }


  snd_soc_component_write(component, WM8750_PWR1, pwr_reg | 0x0141);
  break;
 case 131:
  snd_soc_component_write(component, WM8750_PWR1, 0x0001);
  break;
 }
 return 0;
}
