
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_emu10k1_pcm_mixer {int** send_routing; } ;
struct snd_emu10k1 {int reg_lock; scalar_t__ audigy; struct snd_emu10k1_pcm_mixer* efx_pcm_mixer; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; int id; } ;


 size_t snd_ctl_get_ioffidx (struct snd_kcontrol*,int *) ;
 struct snd_emu10k1* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_emu10k1_efx_send_routing_get(struct snd_kcontrol *kcontrol,
                                        struct snd_ctl_elem_value *ucontrol)
{
 unsigned long flags;
 struct snd_emu10k1 *emu = snd_kcontrol_chip(kcontrol);
 struct snd_emu10k1_pcm_mixer *mix =
  &emu->efx_pcm_mixer[snd_ctl_get_ioffidx(kcontrol, &ucontrol->id)];
 int idx;
 int num_efx = emu->audigy ? 8 : 4;
 int mask = emu->audigy ? 0x3f : 0x0f;

 spin_lock_irqsave(&emu->reg_lock, flags);
 for (idx = 0; idx < num_efx; idx++)
  ucontrol->value.integer.value[idx] =
   mix->send_routing[0][idx] & mask;
 spin_unlock_irqrestore(&emu->reg_lock, flags);
 return 0;
}
