
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {int * d; } ;
struct TYPE_5__ {int max; int min; } ;
struct TYPE_6__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_info {int count; TYPE_1__ dimen; TYPE_3__ value; int type; } ;
struct echoaudio {int dummy; } ;


 int ECHOGAIN_MAXOUT ;
 int ECHOGAIN_MINOUT ;
 int SNDRV_CTL_ELEM_TYPE_INTEGER ;
 int num_busses_in (struct echoaudio*) ;
 int num_busses_out (struct echoaudio*) ;
 struct echoaudio* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_echo_mixer_info(struct snd_kcontrol *kcontrol,
          struct snd_ctl_elem_info *uinfo)
{
 struct echoaudio *chip;

 chip = snd_kcontrol_chip(kcontrol);
 uinfo->type = SNDRV_CTL_ELEM_TYPE_INTEGER;
 uinfo->count = 1;
 uinfo->value.integer.min = ECHOGAIN_MINOUT;
 uinfo->value.integer.max = ECHOGAIN_MAXOUT;
 uinfo->dimen.d[0] = num_busses_out(chip);
 uinfo->dimen.d[1] = num_busses_in(chip);
 return 0;
}
