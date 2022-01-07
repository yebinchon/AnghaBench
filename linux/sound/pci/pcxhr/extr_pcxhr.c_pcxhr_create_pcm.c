
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcxhr {int chip_idx; struct snd_pcm* pcm; TYPE_1__* mgr; int nb_streams_capt; int nb_streams_play; TYPE_2__* card; } ;
struct snd_pcm {int nonatomic; int name; scalar_t__ info_flags; struct snd_pcxhr* private_data; } ;
typedef int name ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int pci; } ;


 int SNDRV_DMA_TYPE_DEV ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int dev_err (int ,char*,char*) ;
 int pcxhr_ops ;
 int snd_dma_pci_data (int ) ;
 int snd_pcm_lib_preallocate_pages_for_all (struct snd_pcm*,int ,int ,int,int) ;
 int snd_pcm_new (TYPE_2__*,char*,int ,int ,int ,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int ,int *) ;
 int snprintf (char*,int,char*,int) ;
 int strcpy (int ,char*) ;

int pcxhr_create_pcm(struct snd_pcxhr *chip)
{
 int err;
 struct snd_pcm *pcm;
 char name[32];

 snprintf(name, sizeof(name), "pcxhr %d", chip->chip_idx);
 if ((err = snd_pcm_new(chip->card, name, 0,
          chip->nb_streams_play,
          chip->nb_streams_capt, &pcm)) < 0) {
  dev_err(chip->card->dev, "cannot create pcm %s\n", name);
  return err;
 }
 pcm->private_data = chip;

 if (chip->nb_streams_play)
  snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK, &pcxhr_ops);
 if (chip->nb_streams_capt)
  snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE, &pcxhr_ops);

 pcm->info_flags = 0;
 pcm->nonatomic = 1;
 strcpy(pcm->name, name);

 snd_pcm_lib_preallocate_pages_for_all(pcm, SNDRV_DMA_TYPE_DEV,
           snd_dma_pci_data(chip->mgr->pci),
           32*1024, 32*1024);
 chip->pcm = pcm;
 return 0;
}
