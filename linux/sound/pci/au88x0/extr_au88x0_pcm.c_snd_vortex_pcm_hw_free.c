
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int lock; TYPE_1__* pcm_vol; int card; } ;
typedef TYPE_3__ vortex_t ;
struct snd_pcm_substream {size_t number; TYPE_2__* runtime; int pcm; } ;
struct TYPE_11__ {int dma; int type; int dir; int nr_ch; } ;
typedef TYPE_4__ stream_t ;
struct TYPE_9__ {int * private_data; } ;
struct TYPE_8__ {int kctl; scalar_t__ active; } ;


 scalar_t__ VORTEX_PCM_ADB ;
 scalar_t__ VORTEX_PCM_TYPE (int ) ;
 scalar_t__ VORTEX_PCM_WT ;
 int snd_pcm_lib_free_pages (struct snd_pcm_substream*) ;
 TYPE_3__* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int vortex_adb_allocroute (TYPE_3__*,int ,int ,int ,int ,size_t) ;
 int vortex_notify_pcm_vol_change (int ,int ,int ) ;
 int vortex_wt_allocroute (TYPE_3__*,int ,int ) ;

__attribute__((used)) static int snd_vortex_pcm_hw_free(struct snd_pcm_substream *substream)
{
 vortex_t *chip = snd_pcm_substream_chip(substream);
 stream_t *stream = (stream_t *) (substream->runtime->private_data);

 spin_lock_irq(&chip->lock);

 if (VORTEX_PCM_TYPE(substream->pcm) != VORTEX_PCM_WT) {
  if (stream != ((void*)0)) {
   if (VORTEX_PCM_TYPE(substream->pcm) == VORTEX_PCM_ADB) {
    chip->pcm_vol[substream->number].active = 0;
    vortex_notify_pcm_vol_change(chip->card,
     chip->pcm_vol[substream->number].kctl,
     0);
   }
   vortex_adb_allocroute(chip, stream->dma,
           stream->nr_ch, stream->dir,
           stream->type,
           substream->number);
  }
 }

 else {
  if (stream != ((void*)0))
   vortex_wt_allocroute(chip, stream->dma, 0);
 }

 substream->runtime->private_data = ((void*)0);
 spin_unlock_irq(&chip->lock);

 return snd_pcm_lib_free_pages(substream);
}
