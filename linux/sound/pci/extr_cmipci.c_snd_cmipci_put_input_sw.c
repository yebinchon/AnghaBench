
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
struct cmipci_sb_reg {int left_shift; int right_shift; int right_reg; int left_reg; } ;
struct cmipci {int reg_lock; } ;


 int cmipci_sb_reg_decode (struct cmipci_sb_reg*,int ) ;
 int snd_cmipci_mixer_read (struct cmipci*,int ) ;
 int snd_cmipci_mixer_write (struct cmipci*,int ,int) ;
 struct cmipci* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_cmipci_put_input_sw(struct snd_kcontrol *kcontrol,
       struct snd_ctl_elem_value *ucontrol)
{
 struct cmipci *cm = snd_kcontrol_chip(kcontrol);
 struct cmipci_sb_reg reg;
 int change;
 int val1, val2, oval1, oval2;

 cmipci_sb_reg_decode(&reg, kcontrol->private_value);
 spin_lock_irq(&cm->reg_lock);
 oval1 = snd_cmipci_mixer_read(cm, reg.left_reg);
 oval2 = snd_cmipci_mixer_read(cm, reg.right_reg);
 val1 = oval1 & ~((1 << reg.left_shift) | (1 << reg.right_shift));
 val2 = oval2 & ~((1 << reg.left_shift) | (1 << reg.right_shift));
 val1 |= (ucontrol->value.integer.value[0] & 1) << reg.left_shift;
 val2 |= (ucontrol->value.integer.value[1] & 1) << reg.left_shift;
 val1 |= (ucontrol->value.integer.value[2] & 1) << reg.right_shift;
 val2 |= (ucontrol->value.integer.value[3] & 1) << reg.right_shift;
 change = val1 != oval1 || val2 != oval2;
 snd_cmipci_mixer_write(cm, reg.left_reg, val1);
 snd_cmipci_mixer_write(cm, reg.right_reg, val2);
 spin_unlock_irq(&cm->reg_lock);
 return change;
}
