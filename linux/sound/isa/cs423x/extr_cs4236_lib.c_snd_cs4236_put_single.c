
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_wss {int* eimage; int reg_lock; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 size_t CS4236_REG (int) ;
 int snd_cs4236_ext_out (struct snd_wss*,int,unsigned short) ;
 struct snd_wss* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_cs4236_put_single(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_wss *chip = snd_kcontrol_chip(kcontrol);
 unsigned long flags;
 int reg = kcontrol->private_value & 0xff;
 int shift = (kcontrol->private_value >> 8) & 0xff;
 int mask = (kcontrol->private_value >> 16) & 0xff;
 int invert = (kcontrol->private_value >> 24) & 0xff;
 int change;
 unsigned short val;

 val = (ucontrol->value.integer.value[0] & mask);
 if (invert)
  val = mask - val;
 val <<= shift;
 spin_lock_irqsave(&chip->reg_lock, flags);
 val = (chip->eimage[CS4236_REG(reg)] & ~(mask << shift)) | val;
 change = val != chip->eimage[CS4236_REG(reg)];
 snd_cs4236_ext_out(chip, reg, val);
 spin_unlock_irqrestore(&chip->reg_lock, flags);
 return change;
}
