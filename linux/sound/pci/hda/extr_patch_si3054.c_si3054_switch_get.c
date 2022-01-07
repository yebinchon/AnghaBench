
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hda_codec {int dummy; } ;


 int PRIVATE_MASK (int ) ;
 int PRIVATE_REG (int ) ;
 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int si3054_switch_get(struct snd_kcontrol *kcontrol,
                 struct snd_ctl_elem_value *uvalue)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);
 u16 reg = PRIVATE_REG(kcontrol->private_value);
 u16 mask = PRIVATE_MASK(kcontrol->private_value);
 uvalue->value.integer.value[0] = (GET_REG(codec, reg)) & mask ? 1 : 0 ;
 return 0;
}
