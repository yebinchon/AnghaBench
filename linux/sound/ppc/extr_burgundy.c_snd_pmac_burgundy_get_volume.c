
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pmac {int dummy; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 unsigned int BASE2ADDR (int) ;
 struct snd_pmac* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int snd_pmac_burgundy_read_volume (struct snd_pmac*,unsigned int,int ,int) ;

__attribute__((used)) static int snd_pmac_burgundy_get_volume(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct snd_pmac *chip = snd_kcontrol_chip(kcontrol);
 unsigned int addr = BASE2ADDR(kcontrol->private_value & 0xff);
 int shift = (kcontrol->private_value >> 8) & 0xff;
 snd_pmac_burgundy_read_volume(chip, addr,
          ucontrol->value.integer.value, shift);
 return 0;
}
