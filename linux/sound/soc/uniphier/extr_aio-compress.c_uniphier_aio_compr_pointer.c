
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct uniphier_aio_sub {int rd_total; int lock; int wr_offs; int rd_offs; TYPE_1__* swm; int compr_bytes; int compr_addr; } ;
struct uniphier_aio {struct uniphier_aio_sub* sub; } ;
struct snd_soc_pcm_runtime {int cpu_dai; } ;
struct snd_compr_tstamp {int copied_total; int byte_offset; } ;
struct snd_compr_stream {size_t direction; struct snd_compr_runtime* runtime; struct snd_soc_pcm_runtime* private_data; } ;
struct snd_compr_runtime {int fragment_size; } ;
struct TYPE_2__ {scalar_t__ dir; } ;


 scalar_t__ PORT_DIR_OUTPUT ;
 int aiodma_rb_sync (struct uniphier_aio_sub*,int ,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct uniphier_aio* uniphier_priv (int ) ;

__attribute__((used)) static int uniphier_aio_compr_pointer(struct snd_compr_stream *cstream,
          struct snd_compr_tstamp *tstamp)
{
 struct snd_soc_pcm_runtime *rtd = cstream->private_data;
 struct snd_compr_runtime *runtime = cstream->runtime;
 struct uniphier_aio *aio = uniphier_priv(rtd->cpu_dai);
 struct uniphier_aio_sub *sub = &aio->sub[cstream->direction];
 int bytes = runtime->fragment_size;
 unsigned long flags;
 u32 pos;

 spin_lock_irqsave(&sub->lock, flags);

 aiodma_rb_sync(sub, sub->compr_addr, sub->compr_bytes, bytes);

 if (sub->swm->dir == PORT_DIR_OUTPUT) {
  pos = sub->rd_offs;

  tstamp->copied_total = sub->rd_total / 2;
 } else {
  pos = sub->wr_offs;
  tstamp->copied_total = sub->rd_total;
 }
 tstamp->byte_offset = pos;

 spin_unlock_irqrestore(&sub->lock, flags);

 return 0;
}
