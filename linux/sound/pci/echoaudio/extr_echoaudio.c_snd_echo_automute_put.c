
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
struct echoaudio {int digital_in_automute; int lock; } ;


 int set_input_auto_mute (struct echoaudio*,int) ;
 struct echoaudio* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_echo_automute_put(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct echoaudio *chip = snd_kcontrol_chip(kcontrol);
 int automute, changed = 0;

 automute = !!ucontrol->value.integer.value[0];
 if (chip->digital_in_automute != automute) {
  spin_lock_irq(&chip->lock);
  changed = set_input_auto_mute(chip, automute);
  spin_unlock_irq(&chip->lock);
  if (changed == 0)
   changed = 1;
 }
 return changed;
}
