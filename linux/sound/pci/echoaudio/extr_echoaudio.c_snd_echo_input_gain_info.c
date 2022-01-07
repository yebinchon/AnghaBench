
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int max; int min; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_info {TYPE_2__ value; int count; int type; } ;
struct echoaudio {int dummy; } ;


 int ECHOGAIN_MAXINP ;
 int ECHOGAIN_MININP ;
 int SNDRV_CTL_ELEM_TYPE_INTEGER ;
 int num_analog_busses_in (struct echoaudio*) ;
 struct echoaudio* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_echo_input_gain_info(struct snd_kcontrol *kcontrol,
        struct snd_ctl_elem_info *uinfo)
{
 struct echoaudio *chip;

 chip = snd_kcontrol_chip(kcontrol);
 uinfo->type = SNDRV_CTL_ELEM_TYPE_INTEGER;
 uinfo->count = num_analog_busses_in(chip);
 uinfo->value.integer.min = ECHOGAIN_MININP;
 uinfo->value.integer.max = ECHOGAIN_MAXINP;
 return 0;
}
