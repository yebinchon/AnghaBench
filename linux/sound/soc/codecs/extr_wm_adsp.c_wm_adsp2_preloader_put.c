
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wm_adsp {char* name; int boot_work; scalar_t__ preloaded; } ;
struct soc_mixer_control {int shift; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int ARRAY_SIZE (char*) ;
 int flush_work (int *) ;
 int snd_soc_component_disable_pin (struct snd_soc_component*,char*) ;
 int snd_soc_component_force_enable_pin (struct snd_soc_component*,char*) ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 struct wm_adsp* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_dapm_sync (struct snd_soc_dapm_context*) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;
 int snprintf (char*,int ,char*,char*) ;

int wm_adsp2_preloader_put(struct snd_kcontrol *kcontrol,
      struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_soc_kcontrol_component(kcontrol);
 struct wm_adsp *dsps = snd_soc_component_get_drvdata(component);
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);
 struct soc_mixer_control *mc =
  (struct soc_mixer_control *)kcontrol->private_value;
 struct wm_adsp *dsp = &dsps[mc->shift - 1];
 char preload[32];

 snprintf(preload, ARRAY_SIZE(preload), "%s Preload", dsp->name);

 dsp->preloaded = ucontrol->value.integer.value[0];

 if (ucontrol->value.integer.value[0])
  snd_soc_component_force_enable_pin(component, preload);
 else
  snd_soc_component_disable_pin(component, preload);

 snd_soc_dapm_sync(dapm);

 flush_work(&dsp->boot_work);

 return 0;
}
