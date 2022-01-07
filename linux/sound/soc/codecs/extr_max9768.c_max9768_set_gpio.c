
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct max9768 {int mute_gpio; } ;


 int gpio_set_value_cansleep (int ,int) ;
 struct max9768* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;

__attribute__((used)) static int max9768_set_gpio(struct snd_kcontrol *kcontrol,
 struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *c = snd_soc_kcontrol_component(kcontrol);
 struct max9768 *max9768 = snd_soc_component_get_drvdata(c);

 gpio_set_value_cansleep(max9768->mute_gpio, !ucontrol->value.integer.value[0]);

 return 0;
}
