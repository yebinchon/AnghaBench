
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {scalar_t__ private_value; } ;
struct snd_emu8000 {int bass_level; int treble_level; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 struct snd_emu8000* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int mixer_bass_treble_get(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_emu8000 *emu = snd_kcontrol_chip(kcontrol);

 ucontrol->value.integer.value[0] = kcontrol->private_value ? emu->treble_level : emu->bass_level;
 return 0;
}
