
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_aio_sub {int pass_through; int use_mmap; struct snd_compr_stream* cstream; } ;
struct uniphier_aio {struct uniphier_aio_sub* sub; } ;
struct snd_soc_pcm_runtime {int cpu_dai; } ;
struct snd_compr_stream {size_t direction; struct snd_soc_pcm_runtime* private_data; } ;


 int EBUSY ;
 int aio_init (struct uniphier_aio_sub*) ;
 int uniphier_aio_comprdma_new (struct snd_soc_pcm_runtime*) ;
 struct uniphier_aio* uniphier_priv (int ) ;

__attribute__((used)) static int uniphier_aio_compr_open(struct snd_compr_stream *cstream)
{
 struct snd_soc_pcm_runtime *rtd = cstream->private_data;
 struct uniphier_aio *aio = uniphier_priv(rtd->cpu_dai);
 struct uniphier_aio_sub *sub = &aio->sub[cstream->direction];
 int ret;

 if (sub->cstream)
  return -EBUSY;

 sub->cstream = cstream;
 sub->pass_through = 1;
 sub->use_mmap = 0;

 ret = uniphier_aio_comprdma_new(rtd);
 if (ret)
  return ret;

 ret = aio_init(sub);
 if (ret)
  return ret;

 return 0;
}
