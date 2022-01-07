
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct echoaudio {scalar_t__* nominal_level; int lock; } ;


 int bx_analog_in (struct echoaudio*) ;
 int num_analog_busses_in (struct echoaudio*) ;
 int set_nominal_level (struct echoaudio*,int,scalar_t__) ;
 struct echoaudio* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int update_output_line_level (struct echoaudio*) ;

__attribute__((used)) static int snd_echo_input_nominal_put(struct snd_kcontrol *kcontrol,
          struct snd_ctl_elem_value *ucontrol)
{
 struct echoaudio *chip;
 int c, changed;

 changed = 0;
 chip = snd_kcontrol_chip(kcontrol);
 spin_lock_irq(&chip->lock);
 for (c = 0; c < num_analog_busses_in(chip); c++) {
  if (chip->nominal_level[bx_analog_in(chip) + c] !=
      ucontrol->value.integer.value[c]) {
   set_nominal_level(chip, bx_analog_in(chip) + c,
       ucontrol->value.integer.value[c]);
   changed = 1;
  }
 }
 if (changed)
  update_output_line_level(chip);


 spin_unlock_irq(&chip->lock);
 return changed;
}
