
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {scalar_t__ private_value; } ;
struct snd_emu10k1_fx8010_ctl {unsigned int vcount; int * value; } ;
struct snd_emu10k1 {int reg_lock; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 struct snd_emu10k1* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_emu10k1_gpr_ctl_get(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_emu10k1 *emu = snd_kcontrol_chip(kcontrol);
 struct snd_emu10k1_fx8010_ctl *ctl =
  (struct snd_emu10k1_fx8010_ctl *) kcontrol->private_value;
 unsigned long flags;
 unsigned int i;

 spin_lock_irqsave(&emu->reg_lock, flags);
 for (i = 0; i < ctl->vcount; i++)
  ucontrol->value.integer.value[i] = ctl->value[i];
 spin_unlock_irqrestore(&emu->reg_lock, flags);
 return 0;
}
