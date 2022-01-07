
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct TYPE_6__ {int * input_source; } ;
struct snd_emu10k1 {TYPE_3__ emu1010; } ;
struct TYPE_4__ {int * item; } ;
struct TYPE_5__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int EINVAL ;
 struct snd_emu10k1* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_emu1010_input_source_get(struct snd_kcontrol *kcontrol,
                                 struct snd_ctl_elem_value *ucontrol)
{
 struct snd_emu10k1 *emu = snd_kcontrol_chip(kcontrol);
 unsigned int channel;

 channel = (kcontrol->private_value) & 0xff;

 if (channel >= 22)
  return -EINVAL;
 ucontrol->value.enumerated.item[0] = emu->emu1010.input_source[channel];
 return 0;
}
