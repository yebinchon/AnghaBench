
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wm9712_priv {unsigned int* hp_mixer; } ;
struct soc_mixer_control {int shift; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {unsigned int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 struct wm9712_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_dapm_context* snd_soc_dapm_kcontrol_dapm (struct snd_kcontrol*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (struct snd_soc_dapm_context*) ;

__attribute__((used)) static int wm9712_hp_mixer_get(struct snd_kcontrol *kcontrol,
 struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_dapm_context *dapm = snd_soc_dapm_kcontrol_dapm(kcontrol);
 struct snd_soc_component *component = snd_soc_dapm_to_component(dapm);
 struct wm9712_priv *wm9712 = snd_soc_component_get_drvdata(component);
 struct soc_mixer_control *mc =
  (struct soc_mixer_control *)kcontrol->private_value;
 unsigned int shift, mixer;

 mixer = mc->shift >> 8;
 shift = mc->shift & 0xff;

 ucontrol->value.integer.value[0] =
  (wm9712->hp_mixer[mixer] >> shift) & 1;

 return 0;
}
