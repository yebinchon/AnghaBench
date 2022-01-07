
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {size_t private_value; } ;
struct snd_ice1712 {int dummy; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct qtet_kcontrol_private {unsigned int (* get_register ) (struct snd_ice1712*) ;unsigned int bit; int (* set_register ) (struct snd_ice1712*,unsigned int) ;} ;


 struct qtet_kcontrol_private* qtet_privates ;
 struct snd_ice1712* snd_kcontrol_chip (struct snd_kcontrol*) ;
 unsigned int stub1 (struct snd_ice1712*) ;
 int stub2 (struct snd_ice1712*,unsigned int) ;

__attribute__((used)) static int qtet_sw_put(struct snd_kcontrol *kcontrol,
  struct snd_ctl_elem_value *ucontrol)
{
 struct qtet_kcontrol_private private =
  qtet_privates[kcontrol->private_value];
 struct snd_ice1712 *ice = snd_kcontrol_chip(kcontrol);
 unsigned int old, new;
 old = private.get_register(ice);
 if (ucontrol->value.integer.value[0])
  new = old | private.bit;
 else
  new = old & ~private.bit;
 if (old != new) {
  private.set_register(ice, new);
  return 1;
 }

 return 0;
}
