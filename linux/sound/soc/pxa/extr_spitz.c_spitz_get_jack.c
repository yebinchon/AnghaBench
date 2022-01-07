
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


 int spitz_jack_func ;

__attribute__((used)) static int spitz_get_jack(struct snd_kcontrol *kcontrol,
 struct snd_ctl_elem_value *ucontrol)
{
 ucontrol->value.enumerated.item[0] = spitz_jack_func;
 return 0;
}
