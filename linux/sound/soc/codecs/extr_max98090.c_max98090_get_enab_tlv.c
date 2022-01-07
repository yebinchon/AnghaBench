
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct soc_mixer_control {int reg; unsigned int shift; int max; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {unsigned int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct max98090_priv {unsigned int pa1en; unsigned int pa2en; unsigned int sidetone; } ;


 int EINVAL ;



 int fls (int ) ;
 struct max98090_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 unsigned int snd_soc_component_read32 (struct snd_soc_component*,int) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;

__attribute__((used)) static int max98090_get_enab_tlv(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_soc_kcontrol_component(kcontrol);
 struct max98090_priv *max98090 = snd_soc_component_get_drvdata(component);
 struct soc_mixer_control *mc =
  (struct soc_mixer_control *)kcontrol->private_value;
 unsigned int mask = (1 << fls(mc->max)) - 1;
 unsigned int val = snd_soc_component_read32(component, mc->reg);
 unsigned int *select;

 switch (mc->reg) {
 case 129:
  select = &(max98090->pa1en);
  break;
 case 128:
  select = &(max98090->pa2en);
  break;
 case 130:
  select = &(max98090->sidetone);
  break;
 default:
  return -EINVAL;
 }

 val = (val >> mc->shift) & mask;

 if (val >= 1) {

  val = val - 1;
  *select = val;
 } else {

  val = *select;
 }

 ucontrol->value.integer.value[0] = val;
 return 0;
}
