
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct snd_pcsp {TYPE_1__* pcm; int card; } ;
struct TYPE_4__ {int name; int info_flags; struct snd_pcsp* private_data; } ;


 int GFP_KERNEL ;
 int PCSP_BUFFER_SIZE ;
 int SNDRV_DMA_TYPE_CONTINUOUS ;
 int SNDRV_PCM_INFO_HALF_DUPLEX ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int snd_dma_continuous_data (int ) ;
 int snd_pcm_lib_preallocate_pages_for_all (TYPE_1__*,int ,int ,int ,int ) ;
 int snd_pcm_new (int ,char*,int ,int,int ,TYPE_1__**) ;
 int snd_pcm_set_ops (TYPE_1__*,int ,int *) ;
 int snd_pcsp_playback_ops ;
 int strcpy (int ,char*) ;

int snd_pcsp_new_pcm(struct snd_pcsp *chip)
{
 int err;

 err = snd_pcm_new(chip->card, "pcspeaker", 0, 1, 0, &chip->pcm);
 if (err < 0)
  return err;

 snd_pcm_set_ops(chip->pcm, SNDRV_PCM_STREAM_PLAYBACK,
   &snd_pcsp_playback_ops);

 chip->pcm->private_data = chip;
 chip->pcm->info_flags = SNDRV_PCM_INFO_HALF_DUPLEX;
 strcpy(chip->pcm->name, "pcsp");

 snd_pcm_lib_preallocate_pages_for_all(chip->pcm,
           SNDRV_DMA_TYPE_CONTINUOUS,
           snd_dma_continuous_data
           (GFP_KERNEL), PCSP_BUFFER_SIZE,
           PCSP_BUFFER_SIZE);

 return 0;
}
