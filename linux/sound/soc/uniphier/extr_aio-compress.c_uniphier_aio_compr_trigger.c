
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uniphier_aio_sub {int running; int lock; int compr_bytes; int compr_addr; } ;
struct uniphier_aio {TYPE_2__* chip; struct uniphier_aio_sub* sub; } ;
struct snd_soc_pcm_runtime {int cpu_dai; } ;
struct snd_compr_stream {size_t direction; struct snd_compr_runtime* runtime; struct snd_soc_pcm_runtime* private_data; } ;
struct snd_compr_runtime {int fragment_size; } ;
struct device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {struct device dev; } ;


 int EINVAL ;


 int aiodma_ch_set_enable (struct uniphier_aio_sub*,int) ;
 int aiodma_rb_sync (struct uniphier_aio_sub*,int ,int ,int) ;
 int dev_warn (struct device*,char*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct uniphier_aio* uniphier_priv (int ) ;

__attribute__((used)) static int uniphier_aio_compr_trigger(struct snd_compr_stream *cstream,
          int cmd)
{
 struct snd_soc_pcm_runtime *rtd = cstream->private_data;
 struct snd_compr_runtime *runtime = cstream->runtime;
 struct uniphier_aio *aio = uniphier_priv(rtd->cpu_dai);
 struct uniphier_aio_sub *sub = &aio->sub[cstream->direction];
 struct device *dev = &aio->chip->pdev->dev;
 int bytes = runtime->fragment_size, ret = 0;
 unsigned long flags;

 spin_lock_irqsave(&sub->lock, flags);
 switch (cmd) {
 case 129:
  aiodma_rb_sync(sub, sub->compr_addr, sub->compr_bytes, bytes);
  aiodma_ch_set_enable(sub, 1);
  sub->running = 1;

  break;
 case 128:
  sub->running = 0;
  aiodma_ch_set_enable(sub, 0);

  break;
 default:
  dev_warn(dev, "Unknown trigger(%d)\n", cmd);
  ret = -EINVAL;
 }
 spin_unlock_irqrestore(&sub->lock, flags);

 return ret;
}
