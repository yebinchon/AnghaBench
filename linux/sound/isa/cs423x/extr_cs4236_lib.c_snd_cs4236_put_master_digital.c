
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_wss {int* eimage; int reg_lock; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int CS4236_LEFT_MASTER ;
 size_t CS4236_REG (int ) ;
 int CS4236_RIGHT_MASTER ;
 int snd_cs4236_ext_out (struct snd_wss*,int ,unsigned short) ;
 unsigned short snd_cs4236_mixer_master_digital_invert_volume (int) ;
 struct snd_wss* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_cs4236_put_master_digital(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_wss *chip = snd_kcontrol_chip(kcontrol);
 unsigned long flags;
 int change;
 unsigned short val1, val2;

 val1 = snd_cs4236_mixer_master_digital_invert_volume(ucontrol->value.integer.value[0] & 0x7f);
 val2 = snd_cs4236_mixer_master_digital_invert_volume(ucontrol->value.integer.value[1] & 0x7f);
 spin_lock_irqsave(&chip->reg_lock, flags);
 val1 = (chip->eimage[CS4236_REG(CS4236_LEFT_MASTER)] & ~0x7f) | val1;
 val2 = (chip->eimage[CS4236_REG(CS4236_RIGHT_MASTER)] & ~0x7f) | val2;
 change = val1 != chip->eimage[CS4236_REG(CS4236_LEFT_MASTER)] || val2 != chip->eimage[CS4236_REG(CS4236_RIGHT_MASTER)];
 snd_cs4236_ext_out(chip, CS4236_LEFT_MASTER, val1);
 snd_cs4236_ext_out(chip, CS4236_RIGHT_MASTER, val2);
 spin_unlock_irqrestore(&chip->reg_lock, flags);
 return change;
}
