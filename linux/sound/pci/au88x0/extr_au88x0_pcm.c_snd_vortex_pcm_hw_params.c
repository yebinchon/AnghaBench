
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int lock; TYPE_4__* dma_wt; TYPE_1__* pcm_vol; TYPE_7__* card; TYPE_4__* dma_adb; } ;
typedef TYPE_3__ vortex_t ;
struct snd_pcm_substream {size_t number; TYPE_2__* runtime; int pcm; int stream; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_14__ {int dma; int type; struct snd_pcm_substream* substream; int dir; int nr_ch; } ;
typedef TYPE_4__ stream_t ;
struct TYPE_15__ {int dev; } ;
struct TYPE_12__ {TYPE_4__* private_data; } ;
struct TYPE_11__ {int active; int kctl; } ;


 int VORTEX_PCM_ADB ;
 int VORTEX_PCM_TYPE (int ) ;
 int VORTEX_PCM_WT ;
 int dev_err (int ,char*) ;
 int params_buffer_bytes (struct snd_pcm_hw_params*) ;
 int params_channels (struct snd_pcm_hw_params*) ;
 int params_period_bytes (struct snd_pcm_hw_params*) ;
 int params_periods (struct snd_pcm_hw_params*) ;
 int snd_pcm_lib_malloc_pages (struct snd_pcm_substream*,int ) ;
 TYPE_3__* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int vortex_adb_allocroute (TYPE_3__*,int,int ,int ,int,size_t) ;
 int vortex_adbdma_setbuffers (TYPE_3__*,int,int ,int ) ;
 int vortex_notify_pcm_vol_change (TYPE_7__*,int ,int) ;
 int vortex_wt_allocroute (TYPE_3__*,size_t,int ) ;
 int vortex_wtdma_setbuffers (TYPE_3__*,int,int ,int ) ;

__attribute__((used)) static int
snd_vortex_pcm_hw_params(struct snd_pcm_substream *substream,
    struct snd_pcm_hw_params *hw_params)
{
 vortex_t *chip = snd_pcm_substream_chip(substream);
 stream_t *stream = (stream_t *) (substream->runtime->private_data);
 int err;


 err =
     snd_pcm_lib_malloc_pages(substream, params_buffer_bytes(hw_params));
 if (err < 0) {
  dev_err(chip->card->dev, "Vortex: pcm page alloc failed!\n");
  return err;
 }




 spin_lock_irq(&chip->lock);

 if (VORTEX_PCM_TYPE(substream->pcm) != VORTEX_PCM_WT) {
  int dma, type = VORTEX_PCM_TYPE(substream->pcm);

  if (stream != ((void*)0))
   vortex_adb_allocroute(chip, stream->dma,
           stream->nr_ch, stream->dir,
           stream->type,
           substream->number);

  dma =
      vortex_adb_allocroute(chip, -1,
       params_channels(hw_params),
       substream->stream, type,
       substream->number);
  if (dma < 0) {
   spin_unlock_irq(&chip->lock);
   return dma;
  }
  stream = substream->runtime->private_data = &chip->dma_adb[dma];
  stream->substream = substream;

  vortex_adbdma_setbuffers(chip, dma,
      params_period_bytes(hw_params),
      params_periods(hw_params));
  if (VORTEX_PCM_TYPE(substream->pcm) == VORTEX_PCM_ADB) {
   chip->pcm_vol[substream->number].active = 1;
   vortex_notify_pcm_vol_change(chip->card,
    chip->pcm_vol[substream->number].kctl, 1);
  }
 }

 else {


  vortex_wt_allocroute(chip, substream->number,
         params_channels(hw_params));
  stream = substream->runtime->private_data =
      &chip->dma_wt[substream->number];
  stream->dma = substream->number;
  stream->substream = substream;
  vortex_wtdma_setbuffers(chip, substream->number,
     params_period_bytes(hw_params),
     params_periods(hw_params));
 }

 spin_unlock_irq(&chip->lock);
 return 0;
}
