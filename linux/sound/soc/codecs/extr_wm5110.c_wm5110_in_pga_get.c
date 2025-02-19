
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_value {int dummy; } ;


 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 int snd_soc_dapm_mutex_lock (struct snd_soc_dapm_context*) ;
 int snd_soc_dapm_mutex_unlock (struct snd_soc_dapm_context*) ;
 int snd_soc_get_volsw_range (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;

__attribute__((used)) static int wm5110_in_pga_get(struct snd_kcontrol *kcontrol,
        struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_soc_kcontrol_component(kcontrol);
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);
 int ret;





 snd_soc_dapm_mutex_lock(dapm);

 ret = snd_soc_get_volsw_range(kcontrol, ucontrol);

 snd_soc_dapm_mutex_unlock(dapm);

 return ret;
}
