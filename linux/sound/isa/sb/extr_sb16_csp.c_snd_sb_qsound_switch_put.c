
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_sb_csp {unsigned char q_enabled; int q_lock; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 struct snd_sb_csp* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_sb_qsound_switch_put(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_sb_csp *p = snd_kcontrol_chip(kcontrol);
 unsigned long flags;
 int change;
 unsigned char nval;

 nval = ucontrol->value.integer.value[0] & 0x01;
 spin_lock_irqsave(&p->q_lock, flags);
 change = p->q_enabled != nval;
 p->q_enabled = nval;
 spin_unlock_irqrestore(&p->q_lock, flags);
 return change;
}
