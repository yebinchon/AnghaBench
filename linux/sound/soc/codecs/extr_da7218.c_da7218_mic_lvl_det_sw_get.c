
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct soc_mixer_control {unsigned int shift; unsigned int rshift; unsigned int max; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {unsigned int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct da7218_priv {unsigned int mic_lvl_det_en; } ;


 struct da7218_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;

__attribute__((used)) static int da7218_mic_lvl_det_sw_get(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_soc_kcontrol_component(kcontrol);
 struct da7218_priv *da7218 = snd_soc_component_get_drvdata(component);
 struct soc_mixer_control *mixer_ctrl =
  (struct soc_mixer_control *) kcontrol->private_value;
 unsigned int lshift = mixer_ctrl->shift;
 unsigned int rshift = mixer_ctrl->rshift;
 unsigned int lmask = (mixer_ctrl->max << lshift);
 unsigned int rmask = (mixer_ctrl->max << rshift);

 ucontrol->value.integer.value[0] =
  (da7218->mic_lvl_det_en & lmask) >> lshift;
 ucontrol->value.integer.value[1] =
  (da7218->mic_lvl_det_en & rmask) >> rshift;

 return 0;
}
