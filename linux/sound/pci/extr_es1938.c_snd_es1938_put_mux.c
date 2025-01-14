
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {unsigned char* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct es1938 {int dummy; } ;


 int EINVAL ;
 unsigned char snd_es1938_mixer_bits (struct es1938*,int,int,unsigned char) ;
 struct es1938* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_es1938_put_mux(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_value *ucontrol)
{
 struct es1938 *chip = snd_kcontrol_chip(kcontrol);
 unsigned char val = ucontrol->value.enumerated.item[0];

 if (val > 7)
  return -EINVAL;
 return snd_es1938_mixer_bits(chip, 0x1c, 0x07, val) != val;
}
