
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_emu10k1_pcm_mixer {int * attn; } ;
struct snd_emu10k1 {int reg_lock; struct snd_emu10k1_pcm_mixer* efx_pcm_mixer; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; int id; } ;


 size_t snd_ctl_get_ioffidx (struct snd_kcontrol*,int *) ;
 struct snd_emu10k1* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_emu10k1_efx_attn_get(struct snd_kcontrol *kcontrol,
                                struct snd_ctl_elem_value *ucontrol)
{
 struct snd_emu10k1 *emu = snd_kcontrol_chip(kcontrol);
 struct snd_emu10k1_pcm_mixer *mix =
  &emu->efx_pcm_mixer[snd_ctl_get_ioffidx(kcontrol, &ucontrol->id)];
 unsigned long flags;

 spin_lock_irqsave(&emu->reg_lock, flags);
 ucontrol->value.integer.value[0] = mix->attn[0];
 spin_unlock_irqrestore(&emu->reg_lock, flags);
 return 0;
}
