
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_aio_sub {int lock; } ;
struct uniphier_aio {struct uniphier_aio_sub* sub; } ;
struct snd_soc_pcm_runtime {int cpu_dai; } ;
struct snd_pcm_substream {size_t stream; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int period_size; int channels; scalar_t__ dma_bytes; scalar_t__ dma_addr; } ;


 int aiodma_ch_set_param (struct uniphier_aio_sub*) ;
 int aiodma_rb_set_buffer (struct uniphier_aio_sub*,scalar_t__,scalar_t__,int) ;
 int samples_to_bytes (struct snd_pcm_runtime*,int) ;
 struct snd_soc_pcm_runtime* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct uniphier_aio* uniphier_priv (int ) ;

__attribute__((used)) static int uniphier_aiodma_prepare(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_soc_pcm_runtime *rtd = snd_pcm_substream_chip(substream);
 struct uniphier_aio *aio = uniphier_priv(rtd->cpu_dai);
 struct uniphier_aio_sub *sub = &aio->sub[substream->stream];
 int bytes = runtime->period_size *
  runtime->channels * samples_to_bytes(runtime, 1);
 unsigned long flags;
 int ret;

 ret = aiodma_ch_set_param(sub);
 if (ret)
  return ret;

 spin_lock_irqsave(&sub->lock, flags);
 ret = aiodma_rb_set_buffer(sub, runtime->dma_addr,
       runtime->dma_addr + runtime->dma_bytes,
       bytes);
 spin_unlock_irqrestore(&sub->lock, flags);
 if (ret)
  return ret;

 return 0;
}
