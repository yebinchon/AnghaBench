
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_aio_sub {int pass_through; int iec_pc; int params; int lock; scalar_t__ compr_bytes; scalar_t__ compr_addr; } ;
struct uniphier_aio {struct uniphier_aio_sub* sub; } ;
struct snd_soc_pcm_runtime {int cpu_dai; } ;
struct snd_compr_stream {size_t direction; struct snd_compr_runtime* runtime; struct snd_soc_pcm_runtime* private_data; } ;
struct snd_compr_runtime {int fragment_size; } ;


 int aio_if_set_param (struct uniphier_aio_sub*,int ) ;
 int aio_oport_set_stream_type (struct uniphier_aio_sub*,int ) ;
 int aio_port_set_enable (struct uniphier_aio_sub*,int) ;
 int aio_port_set_param (struct uniphier_aio_sub*,int ,int *) ;
 int aiodma_ch_set_param (struct uniphier_aio_sub*) ;
 int aiodma_rb_set_buffer (struct uniphier_aio_sub*,scalar_t__,scalar_t__,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct uniphier_aio* uniphier_priv (int ) ;

__attribute__((used)) static int uniphier_aio_compr_prepare(struct snd_compr_stream *cstream)
{
 struct snd_soc_pcm_runtime *rtd = cstream->private_data;
 struct snd_compr_runtime *runtime = cstream->runtime;
 struct uniphier_aio *aio = uniphier_priv(rtd->cpu_dai);
 struct uniphier_aio_sub *sub = &aio->sub[cstream->direction];
 int bytes = runtime->fragment_size;
 unsigned long flags;
 int ret;

 ret = aiodma_ch_set_param(sub);
 if (ret)
  return ret;

 spin_lock_irqsave(&sub->lock, flags);
 ret = aiodma_rb_set_buffer(sub, sub->compr_addr,
       sub->compr_addr + sub->compr_bytes,
       bytes);
 spin_unlock_irqrestore(&sub->lock, flags);
 if (ret)
  return ret;

 ret = aio_port_set_param(sub, sub->pass_through, &sub->params);
 if (ret)
  return ret;
 ret = aio_oport_set_stream_type(sub, sub->iec_pc);
 if (ret)
  return ret;
 aio_port_set_enable(sub, 1);

 ret = aio_if_set_param(sub, sub->pass_through);
 if (ret)
  return ret;

 return 0;
}
