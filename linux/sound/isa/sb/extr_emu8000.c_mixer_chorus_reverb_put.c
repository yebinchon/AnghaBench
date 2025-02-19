
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {scalar_t__ private_value; } ;
struct snd_emu8000 {unsigned short chorus_mode; unsigned short reverb_mode; int control_lock; } ;
struct TYPE_3__ {unsigned short* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 unsigned short SNDRV_EMU8000_CHORUS_NUMBERS ;
 unsigned short SNDRV_EMU8000_REVERB_NUMBERS ;
 int snd_emu8000_update_chorus_mode (struct snd_emu8000*) ;
 int snd_emu8000_update_reverb_mode (struct snd_emu8000*) ;
 struct snd_emu8000* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int mixer_chorus_reverb_put(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_emu8000 *emu = snd_kcontrol_chip(kcontrol);
 unsigned long flags;
 int change;
 unsigned short val1;

 spin_lock_irqsave(&emu->control_lock, flags);
 if (kcontrol->private_value) {
  val1 = ucontrol->value.integer.value[0] % SNDRV_EMU8000_CHORUS_NUMBERS;
  change = val1 != emu->chorus_mode;
  emu->chorus_mode = val1;
 } else {
  val1 = ucontrol->value.integer.value[0] % SNDRV_EMU8000_REVERB_NUMBERS;
  change = val1 != emu->reverb_mode;
  emu->reverb_mode = val1;
 }
 spin_unlock_irqrestore(&emu->control_lock, flags);
 if (change) {
  if (kcontrol->private_value)
   snd_emu8000_update_chorus_mode(emu);
  else
   snd_emu8000_update_reverb_mode(emu);
 }
 return change;
}
