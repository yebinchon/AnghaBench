
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int * item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int wm8776_field_set (struct snd_kcontrol*,int ) ;

__attribute__((used)) static int wm8776_field_enum_put(struct snd_kcontrol *ctl,
     struct snd_ctl_elem_value *value)
{
 return wm8776_field_set(ctl, value->value.enumerated.item[0]);
}
