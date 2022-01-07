
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct snd_pcm {int nonatomic; int name; scalar_t__ info_flags; struct lx6464es* private_data; } ;
struct TYPE_2__ {int is_capture; } ;
struct lx6464es {TYPE_1__ capture_stream; struct snd_pcm* pcm; int pci; int card; } ;


 int MAX_STREAM_BUFFER ;
 int MICROBLAZE_IBL_MAX ;
 int PAGE_ALIGN (int) ;
 int SNDRV_DMA_TYPE_DEV ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 scalar_t__ card_name ;
 int lx_ops_capture ;
 int lx_ops_playback ;
 int snd_dma_pci_data (int ) ;
 int snd_pcm_lib_preallocate_pages_for_all (struct snd_pcm*,int ,int ,int,int) ;
 int snd_pcm_new (int ,char*,int ,int,int,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int ,int *) ;
 int strcpy (int ,scalar_t__) ;

__attribute__((used)) static int lx_pcm_create(struct lx6464es *chip)
{
 int err;
 struct snd_pcm *pcm;

 u32 size = 64 *
  3 *
  MAX_STREAM_BUFFER *
  MICROBLAZE_IBL_MAX *
  2;

 size = PAGE_ALIGN(size);


 err = snd_pcm_new(chip->card, (char *)card_name, 0,
     1, 1, &pcm);
 if (err < 0)
  return err;

 pcm->private_data = chip;

 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK, &lx_ops_playback);
 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE, &lx_ops_capture);

 pcm->info_flags = 0;
 pcm->nonatomic = 1;
 strcpy(pcm->name, card_name);

 snd_pcm_lib_preallocate_pages_for_all(pcm, SNDRV_DMA_TYPE_DEV,
           snd_dma_pci_data(chip->pci),
           size, size);

 chip->pcm = pcm;
 chip->capture_stream.is_capture = 1;

 return 0;
}
