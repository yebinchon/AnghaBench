
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uniphier_aio_sub {int running; int lock; } ;
struct uniphier_aio {TYPE_2__* chip; struct uniphier_aio_sub* sub; } ;
struct snd_soc_pcm_runtime {int cpu_dai; } ;
struct snd_pcm_substream {size_t stream; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int period_size; int channels; int dma_bytes; int dma_addr; } ;
struct device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {struct device dev; } ;




 int aiodma_ch_set_enable (struct uniphier_aio_sub*,int) ;
 int aiodma_rb_sync (struct uniphier_aio_sub*,int ,int ,int) ;
 int dev_warn (struct device*,char*,int) ;
 int samples_to_bytes (struct snd_pcm_runtime*,int) ;
 struct snd_soc_pcm_runtime* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct uniphier_aio* uniphier_priv (int ) ;

__attribute__((used)) static int uniphier_aiodma_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_soc_pcm_runtime *rtd = snd_pcm_substream_chip(substream);
 struct uniphier_aio *aio = uniphier_priv(rtd->cpu_dai);
 struct uniphier_aio_sub *sub = &aio->sub[substream->stream];
 struct device *dev = &aio->chip->pdev->dev;
 int bytes = runtime->period_size *
  runtime->channels * samples_to_bytes(runtime, 1);
 unsigned long flags;

 spin_lock_irqsave(&sub->lock, flags);
 switch (cmd) {
 case 129:
  aiodma_rb_sync(sub, runtime->dma_addr, runtime->dma_bytes,
          bytes);
  aiodma_ch_set_enable(sub, 1);
  sub->running = 1;

  break;
 case 128:
  sub->running = 0;
  aiodma_ch_set_enable(sub, 0);

  break;
 default:
  dev_warn(dev, "Unknown trigger(%d) ignored\n", cmd);
  break;
 }
 spin_unlock_irqrestore(&sub->lock, flags);

 return 0;
}
