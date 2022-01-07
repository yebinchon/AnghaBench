
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;


 int TWL6040_HSDACMODE ;
 int TWL6040_REG_HSLCTL ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 scalar_t__ snd_soc_dapm_get_pin_status (struct snd_soc_dapm_context*,char*) ;
 int twl6040_read (struct snd_soc_component*,int ) ;

int twl6040_get_dl1_gain(struct snd_soc_component *component)
{
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);

 if (snd_soc_dapm_get_pin_status(dapm, "EP"))
  return -1;

 if (snd_soc_dapm_get_pin_status(dapm, "HSOR") ||
  snd_soc_dapm_get_pin_status(dapm, "HSOL")) {

  u8 val = twl6040_read(component, TWL6040_REG_HSLCTL);
  if (val & TWL6040_HSDACMODE)

   return -8;
  else

   return -1;
 }
 return 0;
}
