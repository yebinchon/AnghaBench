
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


 unsigned short snd_ad1816a_read (struct snd_ad1816a*,int) ;
 int snd_ad1816a_write (struct snd_ad1816a*,int,unsigned short) ;
 struct snd_ad1816a* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_ad1816a_put_single(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ad1816a *chip = snd_kcontrol_chip(kcontrol);
 unsigned long flags;
 int reg = kcontrol->private_value & 0xff;
 int shift = (kcontrol->private_value >> 8) & 0xff;
 int mask = (kcontrol->private_value >> 16) & 0xff;
 int invert = (kcontrol->private_value >> 24) & 0xff;
 int change;
 unsigned short old_val, val;

 val = (ucontrol->value.integer.value[0] & mask);
 if (invert)
  val = mask - val;
 val <<= shift;
 spin_lock_irqsave(&chip->lock, flags);
 old_val = snd_ad1816a_read(chip, reg);
 val = (old_val & ~(mask << shift)) | val;
 change = val != old_val;
 snd_ad1816a_write(chip, reg, val);
 spin_unlock_irqrestore(&chip->lock, flags);
 return change;
}
