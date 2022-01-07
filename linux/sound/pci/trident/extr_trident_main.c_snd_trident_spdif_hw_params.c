
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_trident {scalar_t__ device; unsigned int spdif_pcm_bits; int spdif_pcm_ctrl; unsigned int spdif_bits; TYPE_1__* spdif_pcm_ctl; int card; int reg_lock; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_2__ {int id; } ;


 unsigned int IEC958_AES0_PROFESSIONAL ;
 unsigned int IEC958_AES0_PRO_FS ;
 int IEC958_AES0_PRO_FS_32000 ;
 int IEC958_AES0_PRO_FS_44100 ;
 int IEC958_AES0_PRO_FS_48000 ;
 int IEC958_AES3_CON_FS ;
 int IEC958_AES3_CON_FS_32000 ;
 int IEC958_AES3_CON_FS_44100 ;
 int IEC958_AES3_CON_FS_48000 ;
 int SNDRV_CTL_EVENT_MASK_VALUE ;
 scalar_t__ TRIDENT_DEVICE_ID_SI7018 ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int snd_ctl_notify (int ,int ,int *) ;
 struct snd_trident* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_trident_allocate_evoice (struct snd_pcm_substream*,struct snd_pcm_hw_params*) ;
 int snd_trident_allocate_pcm_mem (struct snd_pcm_substream*,struct snd_pcm_hw_params*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_trident_spdif_hw_params(struct snd_pcm_substream *substream,
           struct snd_pcm_hw_params *hw_params)
{
 struct snd_trident *trident = snd_pcm_substream_chip(substream);
 unsigned int old_bits = 0, change = 0;
 int err;

 err = snd_trident_allocate_pcm_mem(substream, hw_params);
 if (err < 0)
  return err;

 if (trident->device == TRIDENT_DEVICE_ID_SI7018) {
  err = snd_trident_allocate_evoice(substream, hw_params);
  if (err < 0)
   return err;
 }


 spin_lock_irq(&trident->reg_lock);
 old_bits = trident->spdif_pcm_bits;
 if (old_bits & IEC958_AES0_PROFESSIONAL)
  trident->spdif_pcm_bits &= ~IEC958_AES0_PRO_FS;
 else
  trident->spdif_pcm_bits &= ~(IEC958_AES3_CON_FS << 24);
 if (params_rate(hw_params) >= 48000) {
  trident->spdif_pcm_ctrl = 0x3c;
  trident->spdif_pcm_bits |=
   trident->spdif_bits & IEC958_AES0_PROFESSIONAL ?
    IEC958_AES0_PRO_FS_48000 :
    (IEC958_AES3_CON_FS_48000 << 24);
 }
 else if (params_rate(hw_params) >= 44100) {
  trident->spdif_pcm_ctrl = 0x3e;
  trident->spdif_pcm_bits |=
   trident->spdif_bits & IEC958_AES0_PROFESSIONAL ?
    IEC958_AES0_PRO_FS_44100 :
    (IEC958_AES3_CON_FS_44100 << 24);
 }
 else {
  trident->spdif_pcm_ctrl = 0x3d;
  trident->spdif_pcm_bits |=
   trident->spdif_bits & IEC958_AES0_PROFESSIONAL ?
    IEC958_AES0_PRO_FS_32000 :
    (IEC958_AES3_CON_FS_32000 << 24);
 }
 change = old_bits != trident->spdif_pcm_bits;
 spin_unlock_irq(&trident->reg_lock);

 if (change)
  snd_ctl_notify(trident->card, SNDRV_CTL_EVENT_MASK_VALUE, &trident->spdif_pcm_ctl->id);

 return 0;
}
