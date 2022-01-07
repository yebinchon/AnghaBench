
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;




 int WARN (int,char*,int) ;
 int WM8993_ANTIPOP1 ;
 int WM8993_HPOUT2_IN_ENA ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;
 int udelay (int) ;

__attribute__((used)) static int earpiece_event(struct snd_soc_dapm_widget *w,
     struct snd_kcontrol *control, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 u16 reg = snd_soc_component_read32(component, WM8993_ANTIPOP1) & ~WM8993_HPOUT2_IN_ENA;

 switch (event) {
 case 128:
  reg |= WM8993_HPOUT2_IN_ENA;
  snd_soc_component_write(component, WM8993_ANTIPOP1, reg);
  udelay(50);
  break;

 case 129:
  snd_soc_component_write(component, WM8993_ANTIPOP1, reg);
  break;

 default:
  WARN(1, "Invalid event %d\n", event);
  break;
 }

 return 0;
}
