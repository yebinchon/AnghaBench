
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm {int name; int dev_subclass; int dev_class; scalar_t__ info_flags; int private_free; struct snd_ali* private_data; } ;
struct snd_ali {struct snd_pcm** pcm; int pci; TYPE_1__* card; } ;
struct ali_pcm_description {int name; int class; scalar_t__ capture_ops; scalar_t__ playback_ops; int capture_num; int playback_num; } ;
struct TYPE_2__ {int dev; } ;


 int SNDRV_DMA_TYPE_DEV ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int SNDRV_PCM_SUBCLASS_GENERIC_MIX ;
 int dev_err (int ,char*) ;
 int snd_ali_pcm_free ;
 int snd_dma_pci_data (int ) ;
 int snd_pcm_lib_preallocate_pages_for_all (struct snd_pcm*,int ,int ,int,int) ;
 int snd_pcm_new (TYPE_1__*,int ,int,int ,int ,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int ,scalar_t__) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int snd_ali_pcm(struct snd_ali *codec, int device,
         struct ali_pcm_description *desc)
{
 struct snd_pcm *pcm;
 int err;

 err = snd_pcm_new(codec->card, desc->name, device,
     desc->playback_num, desc->capture_num, &pcm);
 if (err < 0) {
  dev_err(codec->card->dev,
   "snd_ali_pcm: err called snd_pcm_new.\n");
  return err;
 }
 pcm->private_data = codec;
 pcm->private_free = snd_ali_pcm_free;
 if (desc->playback_ops)
  snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK,
    desc->playback_ops);
 if (desc->capture_ops)
  snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE,
    desc->capture_ops);

 snd_pcm_lib_preallocate_pages_for_all(pcm, SNDRV_DMA_TYPE_DEV,
           snd_dma_pci_data(codec->pci),
           64*1024, 128*1024);

 pcm->info_flags = 0;
 pcm->dev_class = desc->class;
 pcm->dev_subclass = SNDRV_PCM_SUBCLASS_GENERIC_MIX;
 strcpy(pcm->name, desc->name);
 codec->pcm[0] = pcm;
 return 0;
}
