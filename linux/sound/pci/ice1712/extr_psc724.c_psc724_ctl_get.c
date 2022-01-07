
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct snd_ice1712 {int dummy; } ;
struct TYPE_4__ {int * value; } ;
struct TYPE_5__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct TYPE_6__ {int (* get ) (struct snd_ice1712*) ;} ;


 TYPE_3__* psc724_cont ;
 struct snd_ice1712* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int stub1 (struct snd_ice1712*) ;

__attribute__((used)) static int psc724_ctl_get(struct snd_kcontrol *kcontrol,
      struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ice1712 *ice = snd_kcontrol_chip(kcontrol);
 int n = kcontrol->private_value;

 ucontrol->value.integer.value[0] = psc724_cont[n].get(ice);

 return 0;
}
