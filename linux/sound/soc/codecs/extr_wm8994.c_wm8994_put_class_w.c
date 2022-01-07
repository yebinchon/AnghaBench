
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_value {int dummy; } ;


 struct snd_soc_component* snd_soc_dapm_kcontrol_component (struct snd_kcontrol*) ;
 int snd_soc_dapm_put_volsw (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;
 int wm_hubs_update_class_w (struct snd_soc_component*) ;

__attribute__((used)) static int wm8994_put_class_w(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_soc_dapm_kcontrol_component(kcontrol);
 int ret;

 ret = snd_soc_dapm_put_volsw(kcontrol, ucontrol);

 wm_hubs_update_class_w(component);

 return ret;
}
