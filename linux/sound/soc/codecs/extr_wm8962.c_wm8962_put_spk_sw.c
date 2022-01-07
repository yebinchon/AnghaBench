
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_value {int dummy; } ;


 int WM8962_PWR_MGMT_2 ;
 int WM8962_SPKOUTL_PGA_ENA ;
 int WM8962_SPKOUTL_VOLUME ;
 int WM8962_SPKOUTR_PGA_ENA ;
 int WM8962_SPKOUTR_VOLUME ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;
 int snd_soc_put_volsw (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;

__attribute__((used)) static int wm8962_put_spk_sw(struct snd_kcontrol *kcontrol,
       struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_soc_kcontrol_component(kcontrol);
 int ret;


        ret = snd_soc_put_volsw(kcontrol, ucontrol);
 if (ret == 0)
  return 0;


 ret = snd_soc_component_read32(component, WM8962_PWR_MGMT_2);
 if (ret & WM8962_SPKOUTL_PGA_ENA) {
  snd_soc_component_write(component, WM8962_SPKOUTL_VOLUME,
         snd_soc_component_read32(component, WM8962_SPKOUTL_VOLUME));
  return 1;
 }


 if (ret & WM8962_SPKOUTR_PGA_ENA)
  snd_soc_component_write(component, WM8962_SPKOUTR_VOLUME,
         snd_soc_component_read32(component, WM8962_SPKOUTR_VOLUME));

 return 1;
}
