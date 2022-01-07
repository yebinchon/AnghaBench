
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_5__ {int* value; } ;
struct TYPE_6__ {TYPE_2__ integer; } ;
struct TYPE_4__ {unsigned int index; } ;
struct snd_ctl_elem_value {TYPE_3__ value; TYPE_1__ id; } ;
struct echoaudio {int** monitor_gain; int lock; } ;


 int ECHOGAIN_MAXOUT ;
 int ECHOGAIN_MINOUT ;
 unsigned int ECHO_MAXAUDIOINPUTS ;
 unsigned int ECHO_MAXAUDIOOUTPUTS ;
 int EINVAL ;
 unsigned int num_busses_in (struct echoaudio*) ;
 int set_monitor_gain (struct echoaudio*,unsigned int,unsigned int,int) ;
 struct echoaudio* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int update_output_line_level (struct echoaudio*) ;

__attribute__((used)) static int snd_echo_mixer_put(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_value *ucontrol)
{
 struct echoaudio *chip;
 int changed, gain;
 unsigned int out, in;

 changed = 0;
 chip = snd_kcontrol_chip(kcontrol);
 out = ucontrol->id.index / num_busses_in(chip);
 in = ucontrol->id.index % num_busses_in(chip);
 if (out >= ECHO_MAXAUDIOOUTPUTS || in >= ECHO_MAXAUDIOINPUTS)
  return -EINVAL;
 gain = ucontrol->value.integer.value[0];
 if (gain < ECHOGAIN_MINOUT || gain > ECHOGAIN_MAXOUT)
  return -EINVAL;
 if (chip->monitor_gain[out][in] != gain) {
  spin_lock_irq(&chip->lock);
  set_monitor_gain(chip, out, in, gain);
  update_output_line_level(chip);
  spin_unlock_irq(&chip->lock);
  changed = 1;
 }
 return changed;
}
