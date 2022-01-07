
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int shift; int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int EINVAL ;

 int WARN (int,char*,int) ;

 int WM8962_HPOUTL_VOLUME ;

 int WM8962_HPOUTR_VOLUME ;

 int WM8962_SPKOUTL_VOLUME ;

 int WM8962_SPKOUTR_VOLUME ;
 int snd_soc_component_read32 (struct snd_soc_component*,int) ;
 int snd_soc_component_write (struct snd_soc_component*,int,int ) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int out_pga_event(struct snd_soc_dapm_widget *w,
    struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 int reg;

 switch (w->shift) {
 case 130:
  reg = WM8962_HPOUTR_VOLUME;
  break;
 case 131:
  reg = WM8962_HPOUTL_VOLUME;
  break;
 case 128:
  reg = WM8962_SPKOUTR_VOLUME;
  break;
 case 129:
  reg = WM8962_SPKOUTL_VOLUME;
  break;
 default:
  WARN(1, "Invalid shift %d\n", w->shift);
  return -EINVAL;
 }

 switch (event) {
 case 132:
  return snd_soc_component_write(component, reg, snd_soc_component_read32(component, reg));
 default:
  WARN(1, "Invalid event %d\n", event);
  return -EINVAL;
 }
}
