
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct cros_ec_codec_data {unsigned int max_dmic_gain; } ;


 int EINVAL ;
 int set_ec_mic_gain (struct snd_soc_component*,int ,int ) ;
 struct cros_ec_codec_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;

__attribute__((used)) static int mic_gain_put(struct snd_kcontrol *kcontrol,
   struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component =
  snd_soc_kcontrol_component(kcontrol);
 struct cros_ec_codec_data *codec_data =
  snd_soc_component_get_drvdata(component);
 int left = ucontrol->value.integer.value[0];
 int right = ucontrol->value.integer.value[1];
 unsigned int max_dmic_gain = codec_data->max_dmic_gain;

 if (left > max_dmic_gain || right > max_dmic_gain)
  return -EINVAL;

 return set_ec_mic_gain(component, (u8)left, (u8)right);
}
