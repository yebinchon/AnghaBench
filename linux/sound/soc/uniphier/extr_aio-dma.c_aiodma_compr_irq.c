
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uniphier_aio_sub {TYPE_1__* cstream; int lock; int compr_bytes; int compr_addr; scalar_t__ threshold; } ;
struct snd_compr_runtime {int fragment_size; } ;
struct TYPE_2__ {struct snd_compr_runtime* runtime; } ;


 int aiodma_rb_clear_irq (struct uniphier_aio_sub*) ;
 int aiodma_rb_set_threshold (struct uniphier_aio_sub*,int ,scalar_t__) ;
 int aiodma_rb_sync (struct uniphier_aio_sub*,int ,int ,int) ;
 int snd_compr_fragment_elapsed (TYPE_1__*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void aiodma_compr_irq(struct uniphier_aio_sub *sub)
{
 struct snd_compr_runtime *runtime = sub->cstream->runtime;
 int bytes = runtime->fragment_size;
 int ret;

 spin_lock(&sub->lock);
 ret = aiodma_rb_set_threshold(sub, sub->compr_bytes,
          sub->threshold + bytes);
 if (!ret)
  sub->threshold += bytes;

 aiodma_rb_sync(sub, sub->compr_addr, sub->compr_bytes, bytes);
 aiodma_rb_clear_irq(sub);
 spin_unlock(&sub->lock);

 snd_compr_fragment_elapsed(sub->cstream);
}
