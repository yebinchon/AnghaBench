
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_mixer_control {int reg; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dev; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct snd_ctl_elem_value {int dummy; } ;


 int EBUSY ;
 int MADERA_ADC_DIGITAL_VOLUME_1L ;
 int MADERA_INPUT_ENABLES ;
 int dev_err (int ,char*) ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 int snd_soc_component_read (struct snd_soc_component*,int ,unsigned int*) ;
 int snd_soc_dapm_mutex_lock (struct snd_soc_dapm_context*) ;
 int snd_soc_dapm_mutex_unlock (struct snd_soc_dapm_context*) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;
 int snd_soc_put_volsw (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;

int madera_lp_mode_put(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_value *ucontrol)
{
 struct soc_mixer_control *mc =
  (struct soc_mixer_control *)kcontrol->private_value;
 struct snd_soc_component *component =
  snd_soc_kcontrol_component(kcontrol);
 struct snd_soc_dapm_context *dapm =
  snd_soc_component_get_dapm(component);
 unsigned int val, mask;
 int ret;

 snd_soc_dapm_mutex_lock(dapm);


 ret = snd_soc_component_read(component, MADERA_INPUT_ENABLES, &val);
 if (ret)
  goto exit;
 mask = (mc->reg - MADERA_ADC_DIGITAL_VOLUME_1L) / 4;
 mask ^= 0x1;

 if (val & (1 << mask)) {
  ret = -EBUSY;
  dev_err(component->dev,
   "Can't change lp mode on an active input\n");
  goto exit;
 }

 ret = snd_soc_put_volsw(kcontrol, ucontrol);

exit:
 snd_soc_dapm_mutex_unlock(dapm);

 return ret;
}
