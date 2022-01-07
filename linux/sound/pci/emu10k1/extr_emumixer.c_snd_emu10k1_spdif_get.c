
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_emu10k1 {int* spdif_bits; int reg_lock; } ;
struct TYPE_3__ {int* status; } ;
struct TYPE_4__ {TYPE_1__ iec958; } ;
struct snd_ctl_elem_value {TYPE_2__ value; int id; } ;


 int EINVAL ;
 unsigned int snd_ctl_get_ioffidx (struct snd_kcontrol*,int *) ;
 struct snd_emu10k1* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_emu10k1_spdif_get(struct snd_kcontrol *kcontrol,
                                 struct snd_ctl_elem_value *ucontrol)
{
 struct snd_emu10k1 *emu = snd_kcontrol_chip(kcontrol);
 unsigned int idx = snd_ctl_get_ioffidx(kcontrol, &ucontrol->id);
 unsigned long flags;


 if (idx >= 3)
  return -EINVAL;
 spin_lock_irqsave(&emu->reg_lock, flags);
 ucontrol->value.iec958.status[0] = (emu->spdif_bits[idx] >> 0) & 0xff;
 ucontrol->value.iec958.status[1] = (emu->spdif_bits[idx] >> 8) & 0xff;
 ucontrol->value.iec958.status[2] = (emu->spdif_bits[idx] >> 16) & 0xff;
 ucontrol->value.iec958.status[3] = (emu->spdif_bits[idx] >> 24) & 0xff;
 spin_unlock_irqrestore(&emu->reg_lock, flags);
 return 0;
}
