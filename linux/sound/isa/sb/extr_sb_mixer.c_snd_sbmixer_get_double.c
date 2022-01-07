
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_sb {int mixer_lock; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {unsigned char* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 struct snd_sb* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int snd_sbmixer_read (struct snd_sb*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_sbmixer_get_double(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_sb *sb = snd_kcontrol_chip(kcontrol);
 unsigned long flags;
 int left_reg = kcontrol->private_value & 0xff;
 int right_reg = (kcontrol->private_value >> 8) & 0xff;
 int left_shift = (kcontrol->private_value >> 16) & 0x07;
 int right_shift = (kcontrol->private_value >> 19) & 0x07;
 int mask = (kcontrol->private_value >> 24) & 0xff;
 unsigned char left, right;

 spin_lock_irqsave(&sb->mixer_lock, flags);
 left = (snd_sbmixer_read(sb, left_reg) >> left_shift) & mask;
 right = (snd_sbmixer_read(sb, right_reg) >> right_shift) & mask;
 spin_unlock_irqrestore(&sb->mixer_lock, flags);
 ucontrol->value.integer.value[0] = left;
 ucontrol->value.integer.value[1] = right;
 return 0;
}
