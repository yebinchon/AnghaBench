
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct wm8940_setup_data {int vroi; } ;
struct snd_soc_component {TYPE_1__* dev; } ;
struct TYPE_3__ {struct wm8940_setup_data* platform_data; } ;


 int SND_SOC_BIAS_STANDBY ;
 int WM8940_OUTPUTCTL ;
 int WM8940_POWER1 ;
 int dev_err (TYPE_1__*,char*) ;
 int dev_warn (TYPE_1__*,char*) ;
 int snd_soc_component_force_bias_level (struct snd_soc_component*,int ) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;
 int wm8940_reset (struct snd_soc_component*) ;

__attribute__((used)) static int wm8940_probe(struct snd_soc_component *component)
{
 struct wm8940_setup_data *pdata = component->dev->platform_data;
 int ret;
 u16 reg;

 ret = wm8940_reset(component);
 if (ret < 0) {
  dev_err(component->dev, "Failed to issue reset\n");
  return ret;
 }

 snd_soc_component_force_bias_level(component, SND_SOC_BIAS_STANDBY);

 ret = snd_soc_component_write(component, WM8940_POWER1, 0x180);
 if (ret < 0)
  return ret;

 if (!pdata)
  dev_warn(component->dev, "No platform data supplied\n");
 else {
  reg = snd_soc_component_read32(component, WM8940_OUTPUTCTL);
  ret = snd_soc_component_write(component, WM8940_OUTPUTCTL, reg | pdata->vroi);
  if (ret < 0)
   return ret;
 }

 return ret;
}
