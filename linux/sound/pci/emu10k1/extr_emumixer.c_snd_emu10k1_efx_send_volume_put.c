
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_emu10k1_pcm_mixer {int** send_volume; TYPE_4__* epcm; } ;
struct snd_emu10k1 {int reg_lock; scalar_t__ audigy; struct snd_emu10k1_pcm_mixer* efx_pcm_mixer; } ;
struct TYPE_5__ {int* value; } ;
struct TYPE_6__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; int id; } ;
struct TYPE_8__ {TYPE_3__** voices; } ;
struct TYPE_7__ {int number; } ;


 int snd_ctl_get_ioffidx (struct snd_kcontrol*,int *) ;
 struct snd_emu10k1* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int update_emu10k1_send_volume (struct snd_emu10k1*,int ,int*) ;

__attribute__((used)) static int snd_emu10k1_efx_send_volume_put(struct snd_kcontrol *kcontrol,
                                       struct snd_ctl_elem_value *ucontrol)
{
 unsigned long flags;
 struct snd_emu10k1 *emu = snd_kcontrol_chip(kcontrol);
 int ch = snd_ctl_get_ioffidx(kcontrol, &ucontrol->id);
 struct snd_emu10k1_pcm_mixer *mix = &emu->efx_pcm_mixer[ch];
 int change = 0, idx, val;
 int num_efx = emu->audigy ? 8 : 4;

 spin_lock_irqsave(&emu->reg_lock, flags);
 for (idx = 0; idx < num_efx; idx++) {
  val = ucontrol->value.integer.value[idx] & 255;
  if (mix->send_volume[0][idx] != val) {
   mix->send_volume[0][idx] = val;
   change = 1;
  }
 }
 if (change && mix->epcm) {
  if (mix->epcm->voices[ch]) {
   update_emu10k1_send_volume(emu, mix->epcm->voices[ch]->number,
         &mix->send_volume[0][0]);
  }
 }
 spin_unlock_irqrestore(&emu->reg_lock, flags);
 return change;
}
