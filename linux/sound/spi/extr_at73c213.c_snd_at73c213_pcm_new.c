
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_pcm {int name; int info_flags; struct snd_at73c213* private_data; } ;
struct snd_at73c213 {TYPE_2__* ssc; struct snd_pcm* pcm; TYPE_3__* card; } ;
struct TYPE_6__ {int shortname; } ;
struct TYPE_5__ {TYPE_1__* pdev; } ;
struct TYPE_4__ {int dev; } ;


 int SNDRV_DMA_TYPE_DEV ;
 int SNDRV_PCM_INFO_BLOCK_TRANSFER ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int at73c213_playback_ops ;
 int snd_pcm_lib_preallocate_pages_for_all (struct snd_pcm*,int ,int *,int,int) ;
 int snd_pcm_new (TYPE_3__*,int ,int,int,int ,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int ,int *) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int snd_at73c213_pcm_new(struct snd_at73c213 *chip, int device)
{
 struct snd_pcm *pcm;
 int retval;

 retval = snd_pcm_new(chip->card, chip->card->shortname,
   device, 1, 0, &pcm);
 if (retval < 0)
  goto out;

 pcm->private_data = chip;
 pcm->info_flags = SNDRV_PCM_INFO_BLOCK_TRANSFER;
 strcpy(pcm->name, "at73c213");
 chip->pcm = pcm;

 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK, &at73c213_playback_ops);

 snd_pcm_lib_preallocate_pages_for_all(chip->pcm,
   SNDRV_DMA_TYPE_DEV, &chip->ssc->pdev->dev,
   64 * 1024, 64 * 1024);
out:
 return retval;
}
