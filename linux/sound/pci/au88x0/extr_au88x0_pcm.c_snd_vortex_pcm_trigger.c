
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_17__ {int lock; TYPE_2__* card; } ;
typedef TYPE_3__ vortex_t ;
struct snd_pcm_substream {int pcm; TYPE_1__* runtime; } ;
struct TYPE_18__ {int dma; int fifo_enabled; } ;
typedef TYPE_4__ stream_t ;
struct TYPE_16__ {int dev; } ;
struct TYPE_15__ {scalar_t__ private_data; } ;


 int EINVAL ;




 int VORTEX_PCM_TYPE (int ) ;
 int VORTEX_PCM_WT ;
 int dev_info (int ,char*,int) ;
 TYPE_3__* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vortex_adbdma_pausefifo (TYPE_3__*,int) ;
 int vortex_adbdma_resetup (TYPE_3__*,int) ;
 int vortex_adbdma_resumefifo (TYPE_3__*,int) ;
 int vortex_adbdma_startfifo (TYPE_3__*,int) ;
 int vortex_adbdma_stopfifo (TYPE_3__*,int) ;
 int vortex_wtdma_pausefifo (TYPE_3__*,int) ;
 int vortex_wtdma_resumefifo (TYPE_3__*,int) ;
 int vortex_wtdma_startfifo (TYPE_3__*,int) ;
 int vortex_wtdma_stopfifo (TYPE_3__*,int) ;

__attribute__((used)) static int snd_vortex_pcm_trigger(struct snd_pcm_substream *substream, int cmd)
{
 vortex_t *chip = snd_pcm_substream_chip(substream);
 stream_t *stream = (stream_t *) substream->runtime->private_data;
 int dma = stream->dma;

 spin_lock(&chip->lock);
 switch (cmd) {
 case 129:


  stream->fifo_enabled = 1;
  if (VORTEX_PCM_TYPE(substream->pcm) != VORTEX_PCM_WT) {
   vortex_adbdma_resetup(chip, dma);
   vortex_adbdma_startfifo(chip, dma);
  }

  else {
   dev_info(chip->card->dev, "wt start %d\n", dma);
   vortex_wtdma_startfifo(chip, dma);
  }

  break;
 case 128:


  stream->fifo_enabled = 0;
  if (VORTEX_PCM_TYPE(substream->pcm) != VORTEX_PCM_WT)
   vortex_adbdma_stopfifo(chip, dma);

  else {
   dev_info(chip->card->dev, "wt stop %d\n", dma);
   vortex_wtdma_stopfifo(chip, dma);
  }

  break;
 case 131:

  if (VORTEX_PCM_TYPE(substream->pcm) != VORTEX_PCM_WT)
   vortex_adbdma_pausefifo(chip, dma);

  else
   vortex_wtdma_pausefifo(chip, dma);

  break;
 case 130:

  if (VORTEX_PCM_TYPE(substream->pcm) != VORTEX_PCM_WT)
   vortex_adbdma_resumefifo(chip, dma);

  else
   vortex_wtdma_resumefifo(chip, dma);

  break;
 default:
  spin_unlock(&chip->lock);
  return -EINVAL;
 }
 spin_unlock(&chip->lock);
 return 0;
}
