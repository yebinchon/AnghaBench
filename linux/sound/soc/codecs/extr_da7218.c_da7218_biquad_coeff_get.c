
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct soc_bytes_ext {int max; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {int data; } ;
struct TYPE_4__ {TYPE_1__ bytes; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct da7218_priv {int stbiq_3stage_coeff; int biq_5stage_coeff; } ;




 int EINVAL ;
 int memcpy (int ,int ,int) ;
 struct da7218_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;

__attribute__((used)) static int da7218_biquad_coeff_get(struct snd_kcontrol *kcontrol,
       struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_soc_kcontrol_component(kcontrol);
 struct da7218_priv *da7218 = snd_soc_component_get_drvdata(component);
 struct soc_bytes_ext *bytes_ext =
  (struct soc_bytes_ext *) kcontrol->private_value;


 switch (bytes_ext->max) {
 case 129:
  memcpy(ucontrol->value.bytes.data, da7218->biq_5stage_coeff,
         bytes_ext->max);
  break;
 case 128:
  memcpy(ucontrol->value.bytes.data, da7218->stbiq_3stage_coeff,
         bytes_ext->max);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
