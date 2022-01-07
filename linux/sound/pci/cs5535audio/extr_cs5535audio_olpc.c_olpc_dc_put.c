
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct cs5535audio {int ac97; } ;


 int olpc_analog_input (int ,int ) ;
 struct cs5535audio* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int olpc_dc_put(struct snd_kcontrol *kctl, struct snd_ctl_elem_value *v)
{
 struct cs5535audio *cs5535au = snd_kcontrol_chip(kctl);

 olpc_analog_input(cs5535au->ac97, v->value.integer.value[0]);
 return 1;
}
