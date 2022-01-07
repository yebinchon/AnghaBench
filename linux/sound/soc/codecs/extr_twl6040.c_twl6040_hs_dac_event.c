
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 scalar_t__ SND_SOC_DAPM_EVENT_ON (int) ;
 int TWL6040_HSDACENA ;
 int TWL6040_REG_HSLCTL ;
 int TWL6040_REG_HSRCTL ;
 int msleep (int) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;
 int twl6040_read (struct snd_soc_component*,int ) ;
 int twl6040_write (struct snd_soc_component*,int ,int ) ;

__attribute__((used)) static int twl6040_hs_dac_event(struct snd_soc_dapm_widget *w,
   struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 u8 hslctl, hsrctl;






 hslctl = twl6040_read(component, TWL6040_REG_HSLCTL);
 hsrctl = twl6040_read(component, TWL6040_REG_HSRCTL);
 if (SND_SOC_DAPM_EVENT_ON(event)) {
  hslctl |= TWL6040_HSDACENA;
  hsrctl |= TWL6040_HSDACENA;
 } else {
  hslctl &= ~TWL6040_HSDACENA;
  hsrctl &= ~TWL6040_HSDACENA;
 }
 twl6040_write(component, TWL6040_REG_HSLCTL, hslctl);
 twl6040_write(component, TWL6040_REG_HSRCTL, hsrctl);

 msleep(1);
 return 0;
}
