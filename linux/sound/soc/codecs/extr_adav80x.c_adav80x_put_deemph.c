
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {unsigned int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct adav80x {unsigned int deemph; } ;


 int EINVAL ;
 int adav80x_set_deemph (struct snd_soc_component*) ;
 struct adav80x* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;

__attribute__((used)) static int adav80x_put_deemph(struct snd_kcontrol *kcontrol,
  struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_soc_kcontrol_component(kcontrol);
 struct adav80x *adav80x = snd_soc_component_get_drvdata(component);
 unsigned int deemph = ucontrol->value.integer.value[0];

 if (deemph > 1)
  return -EINVAL;

 adav80x->deemph = deemph;

 return adav80x_set_deemph(component);
}
