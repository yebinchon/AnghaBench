
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uniphier_aio_sub {int lock; int wr_offs; int rd_offs; TYPE_1__* swm; } ;
struct uniphier_aio {struct uniphier_aio_sub* sub; } ;
struct snd_soc_pcm_runtime {int cpu_dai; } ;
struct snd_pcm_substream {size_t stream; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int period_size; int channels; int dma_bytes; int dma_addr; } ;
typedef int snd_pcm_uframes_t ;
struct TYPE_2__ {scalar_t__ dir; } ;


 scalar_t__ PORT_DIR_OUTPUT ;
 int aiodma_rb_sync (struct uniphier_aio_sub*,int ,int ,int) ;
 int bytes_to_frames (struct snd_pcm_runtime*,int ) ;
 int samples_to_bytes (struct snd_pcm_runtime*,int) ;
 struct snd_soc_pcm_runtime* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct uniphier_aio* uniphier_priv (int ) ;

__attribute__((used)) static snd_pcm_uframes_t uniphier_aiodma_pointer(
     struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_soc_pcm_runtime *rtd = snd_pcm_substream_chip(substream);
 struct uniphier_aio *aio = uniphier_priv(rtd->cpu_dai);
 struct uniphier_aio_sub *sub = &aio->sub[substream->stream];
 int bytes = runtime->period_size *
  runtime->channels * samples_to_bytes(runtime, 1);
 unsigned long flags;
 snd_pcm_uframes_t pos;

 spin_lock_irqsave(&sub->lock, flags);
 aiodma_rb_sync(sub, runtime->dma_addr, runtime->dma_bytes, bytes);

 if (sub->swm->dir == PORT_DIR_OUTPUT)
  pos = bytes_to_frames(runtime, sub->rd_offs);
 else
  pos = bytes_to_frames(runtime, sub->wr_offs);
 spin_unlock_irqrestore(&sub->lock, flags);

 return pos;
}
