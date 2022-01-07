
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_wss {int* eimage; int reg_lock; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {void** value; } ;
struct TYPE_3__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;


 int CS4236_LEFT_MASTER ;
 size_t CS4236_REG (int ) ;
 int CS4236_RIGHT_MASTER ;
 void* snd_cs4236_mixer_master_digital_invert_volume (int) ;
 struct snd_wss* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_cs4236_get_master_digital(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_wss *chip = snd_kcontrol_chip(kcontrol);
 unsigned long flags;

 spin_lock_irqsave(&chip->reg_lock, flags);
 ucontrol->value.integer.value[0] = snd_cs4236_mixer_master_digital_invert_volume(chip->eimage[CS4236_REG(CS4236_LEFT_MASTER)] & 0x7f);
 ucontrol->value.integer.value[1] = snd_cs4236_mixer_master_digital_invert_volume(chip->eimage[CS4236_REG(CS4236_RIGHT_MASTER)] & 0x7f);
 spin_unlock_irqrestore(&chip->reg_lock, flags);
 return 0;
}
