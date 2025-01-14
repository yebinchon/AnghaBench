
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct snd_cs46xx {int dummy; } ;


 unsigned int snd_cs46xx_peek (struct snd_cs46xx*,int) ;
 struct snd_cs46xx* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_cs46xx_vol_get(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_cs46xx *chip = snd_kcontrol_chip(kcontrol);
 int reg = kcontrol->private_value;
 unsigned int val = snd_cs46xx_peek(chip, reg);
 ucontrol->value.integer.value[0] = 0xffff - (val >> 16);
 ucontrol->value.integer.value[1] = 0xffff - (val & 0xffff);
 return 0;
}
