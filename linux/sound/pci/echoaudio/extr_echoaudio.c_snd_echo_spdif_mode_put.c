
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int * item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct echoaudio {int professional_spdif; int lock; } ;


 int set_professional_spdif (struct echoaudio*,int) ;
 struct echoaudio* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_echo_spdif_mode_put(struct snd_kcontrol *kcontrol,
       struct snd_ctl_elem_value *ucontrol)
{
 struct echoaudio *chip;
 int mode;

 chip = snd_kcontrol_chip(kcontrol);
 mode = !!ucontrol->value.enumerated.item[0];
 if (mode != chip->professional_spdif) {
  spin_lock_irq(&chip->lock);
  set_professional_spdif(chip, mode);
  spin_unlock_irq(&chip->lock);
  return 1;
 }
 return 0;
}
