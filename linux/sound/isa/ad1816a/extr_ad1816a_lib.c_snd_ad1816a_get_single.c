
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct snd_ad1816a {int lock; } ;


 int snd_ad1816a_read (struct snd_ad1816a*,int) ;
 struct snd_ad1816a* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_ad1816a_get_single(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ad1816a *chip = snd_kcontrol_chip(kcontrol);
 unsigned long flags;
 int reg = kcontrol->private_value & 0xff;
 int shift = (kcontrol->private_value >> 8) & 0xff;
 int mask = (kcontrol->private_value >> 16) & 0xff;
 int invert = (kcontrol->private_value >> 24) & 0xff;

 spin_lock_irqsave(&chip->lock, flags);
 ucontrol->value.integer.value[0] = (snd_ad1816a_read(chip, reg) >> shift) & mask;
 spin_unlock_irqrestore(&chip->lock, flags);
 if (invert)
  ucontrol->value.integer.value[0] = mask - ucontrol->value.integer.value[0];
 return 0;
}
