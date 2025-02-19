
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct TYPE_4__ {int* item; } ;
struct TYPE_3__ {TYPE_2__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;
struct snd_ac97 {int dummy; } ;


 int AC97_SIGMATEL_OUTSEL ;
 int EINVAL ;
 int ac97_update_bits_page (struct snd_ac97*,int ,int,unsigned short,int ) ;
 struct snd_ac97* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_ac97_stac9758_output_jack_put(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ac97 *ac97 = snd_kcontrol_chip(kcontrol);
 int shift = kcontrol->private_value;
 unsigned short val;

 if (ucontrol->value.enumerated.item[0] > 4)
  return -EINVAL;
 if (ucontrol->value.enumerated.item[0] == 0)
  val = 0;
 else
  val = 4 | (ucontrol->value.enumerated.item[0] - 1);
 return ac97_update_bits_page(ac97, AC97_SIGMATEL_OUTSEL,
         7 << shift, val << shift, 0);
}
