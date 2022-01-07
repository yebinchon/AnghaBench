
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_ice1712 {int dummy; } ;
struct TYPE_3__ {scalar_t__* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 unsigned char AK4114_IPS0 ;
 int AK4114_REG_IO1 ;
 unsigned char prodigy192_ak4114_read (struct snd_ice1712*,int ) ;
 int prodigy192_ak4114_write (struct snd_ice1712*,int ,unsigned char) ;
 struct snd_ice1712* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int ak4114_input_sw_put(struct snd_kcontrol *kcontrol,
          struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ice1712 *ice = snd_kcontrol_chip(kcontrol);
 unsigned char new, old, itemvalue;
 int change;

 old = prodigy192_ak4114_read(ice, AK4114_REG_IO1);

 itemvalue = (ucontrol->value.enumerated.item[0]) ? 0xff : 0x00;

 new = (itemvalue & AK4114_IPS0) | (old & ~AK4114_IPS0);
 change = (new != old);
 if (change)
  prodigy192_ak4114_write(ice, AK4114_REG_IO1, new);
 return change;
}
