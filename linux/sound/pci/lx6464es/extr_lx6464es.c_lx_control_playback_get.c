
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct lx6464es {int playback_mute; } ;


 struct lx6464es* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int lx_control_playback_get(struct snd_kcontrol *kcontrol,
       struct snd_ctl_elem_value *ucontrol)
{
 struct lx6464es *chip = snd_kcontrol_chip(kcontrol);
 ucontrol->value.integer.value[0] = chip->playback_mute;
 return 0;
}
