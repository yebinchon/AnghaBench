
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
struct echoaudio {int * nominal_level; } ;


 int num_analog_busses_out (struct echoaudio*) ;
 struct echoaudio* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_echo_output_nominal_get(struct snd_kcontrol *kcontrol,
           struct snd_ctl_elem_value *ucontrol)
{
 struct echoaudio *chip;
 int c;

 chip = snd_kcontrol_chip(kcontrol);
 for (c = 0; c < num_analog_busses_out(chip); c++)
  ucontrol->value.integer.value[c] = chip->nominal_level[c];
 return 0;
}
