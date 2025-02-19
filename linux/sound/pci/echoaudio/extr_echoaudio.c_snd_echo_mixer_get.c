
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {int * value; } ;
struct TYPE_5__ {TYPE_1__ integer; } ;
struct TYPE_6__ {unsigned int index; } ;
struct snd_ctl_elem_value {TYPE_2__ value; TYPE_3__ id; } ;
struct echoaudio {int ** monitor_gain; } ;


 unsigned int ECHO_MAXAUDIOINPUTS ;
 unsigned int ECHO_MAXAUDIOOUTPUTS ;
 int EINVAL ;
 unsigned int num_busses_in (struct echoaudio*) ;
 struct echoaudio* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_echo_mixer_get(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_value *ucontrol)
{
 struct echoaudio *chip = snd_kcontrol_chip(kcontrol);
 unsigned int out = ucontrol->id.index / num_busses_in(chip);
 unsigned int in = ucontrol->id.index % num_busses_in(chip);

 if (out >= ECHO_MAXAUDIOOUTPUTS || in >= ECHO_MAXAUDIOINPUTS)
  return -EINVAL;

 ucontrol->value.integer.value[0] = chip->monitor_gain[out][in];
 return 0;
}
