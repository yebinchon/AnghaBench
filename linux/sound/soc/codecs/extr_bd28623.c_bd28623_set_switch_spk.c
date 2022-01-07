
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {scalar_t__* value; } ;
struct TYPE_3__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;
struct bd28623_priv {scalar_t__ switch_spk; int mute_gpio; } ;


 int gpiod_set_value_cansleep (int ,int) ;
 struct bd28623_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;

__attribute__((used)) static int bd28623_set_switch_spk(struct snd_kcontrol *kcontrol,
      struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component =
  snd_soc_kcontrol_component(kcontrol);
 struct bd28623_priv *bd = snd_soc_component_get_drvdata(component);

 if (bd->switch_spk == ucontrol->value.integer.value[0])
  return 0;

 bd->switch_spk = ucontrol->value.integer.value[0];

 gpiod_set_value_cansleep(bd->mute_gpio, bd->switch_spk ? 0 : 1);

 return 0;
}
