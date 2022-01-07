
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm {int name; scalar_t__ info_flags; struct snd_emu10k1* private_data; } ;
struct TYPE_4__ {int device; } ;
struct snd_kcontrol {TYPE_2__ id; } ;
struct snd_emu10k1 {int* efx_voices_mask; int pci; int card; TYPE_1__* card_capabilities; scalar_t__ audigy; struct snd_pcm* pcm_efx; } ;
struct TYPE_3__ {scalar_t__ emu_model; } ;


 int ENOMEM ;
 int SNDRV_DMA_TYPE_DEV ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int snd_ctl_add (int ,struct snd_kcontrol*) ;
 struct snd_kcontrol* snd_ctl_new1 (int *,struct snd_emu10k1*) ;
 int snd_dma_pci_data (int ) ;
 int snd_emu10k1_capture_efx_ops ;
 int snd_emu10k1_fx8010_playback_ops ;
 int snd_emu10k1_pcm_efx_voices_mask ;
 int snd_pcm_lib_preallocate_pages_for_all (struct snd_pcm*,int ,int ,int,int) ;
 int snd_pcm_new (int ,char*,int,int,int,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int ,int *) ;
 int strcpy (int ,char*) ;

int snd_emu10k1_pcm_efx(struct snd_emu10k1 *emu, int device)
{
 struct snd_pcm *pcm;
 struct snd_kcontrol *kctl;
 int err;

 if ((err = snd_pcm_new(emu->card, "emu10k1 efx", device, 8, 1, &pcm)) < 0)
  return err;

 pcm->private_data = emu;

 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK, &snd_emu10k1_fx8010_playback_ops);
 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE, &snd_emu10k1_capture_efx_ops);

 pcm->info_flags = 0;
 strcpy(pcm->name, "Multichannel Capture/PT Playback");
 emu->pcm_efx = pcm;






 if (emu->audigy) {
  emu->efx_voices_mask[0] = 0;
  if (emu->card_capabilities->emu_model)




   emu->efx_voices_mask[1] = 0xffffffff;
  else
   emu->efx_voices_mask[1] = 0xffff;
 } else {
  emu->efx_voices_mask[0] = 0xffff0000;
  emu->efx_voices_mask[1] = 0;
 }






 kctl = snd_ctl_new1(&snd_emu10k1_pcm_efx_voices_mask, emu);
 if (!kctl)
  return -ENOMEM;
 kctl->id.device = device;
 err = snd_ctl_add(emu->card, kctl);
 if (err < 0)
  return err;

 snd_pcm_lib_preallocate_pages_for_all(pcm, SNDRV_DMA_TYPE_DEV,
           snd_dma_pci_data(emu->pci),
           64*1024, 64*1024);

 return 0;
}
