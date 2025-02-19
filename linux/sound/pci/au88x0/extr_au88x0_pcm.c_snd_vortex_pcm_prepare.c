
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int lock; } ;
typedef TYPE_1__ vortex_t ;
struct snd_pcm_substream {scalar_t__ stream; int pcm; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int channels; int rate; int format; scalar_t__ private_data; } ;
struct TYPE_11__ {int dma; } ;
typedef TYPE_2__ stream_t ;


 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 scalar_t__ VORTEX_PCM_SPDIF ;
 scalar_t__ VORTEX_PCM_TYPE (int ) ;
 scalar_t__ VORTEX_PCM_WT ;
 TYPE_1__* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int vortex_adb_setsrc (TYPE_1__*,int,int ,int) ;
 int vortex_adbdma_setmode (TYPE_1__*,int,int,int,int,int,int ) ;
 int vortex_adbdma_setstartbuffer (TYPE_1__*,int,int ) ;
 int vortex_alsafmt_aspfmt (int ,TYPE_1__*) ;
 int vortex_wtdma_setmode (TYPE_1__*,int,int,int,int ,int ) ;
 int vortex_wtdma_setstartbuffer (TYPE_1__*,int,int ) ;

__attribute__((used)) static int snd_vortex_pcm_prepare(struct snd_pcm_substream *substream)
{
 vortex_t *chip = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 stream_t *stream = (stream_t *) substream->runtime->private_data;
 int dma = stream->dma, fmt, dir;


 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
  dir = 1;
 else
  dir = 0;
 fmt = vortex_alsafmt_aspfmt(runtime->format, chip);
 spin_lock_irq(&chip->lock);
 if (VORTEX_PCM_TYPE(substream->pcm) != VORTEX_PCM_WT) {
  vortex_adbdma_setmode(chip, dma, 1, dir, fmt,
    runtime->channels == 1 ? 0 : 1, 0);
  vortex_adbdma_setstartbuffer(chip, dma, 0);
  if (VORTEX_PCM_TYPE(substream->pcm) != VORTEX_PCM_SPDIF)
   vortex_adb_setsrc(chip, dma, runtime->rate, dir);
 }

 else {
  vortex_wtdma_setmode(chip, dma, 1, fmt, 0, 0);

  vortex_wtdma_setstartbuffer(chip, dma, 0);
 }

 spin_unlock_irq(&chip->lock);
 return 0;
}
