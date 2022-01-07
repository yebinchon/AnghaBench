
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_aio_sub {int * cstream; } ;
struct uniphier_aio {struct uniphier_aio_sub* sub; } ;
struct snd_soc_pcm_runtime {int cpu_dai; } ;
struct snd_compr_stream {size_t direction; struct snd_soc_pcm_runtime* private_data; } ;


 int uniphier_aio_compr_hw_free (struct snd_compr_stream*) ;
 int uniphier_aio_comprdma_free (struct snd_soc_pcm_runtime*) ;
 struct uniphier_aio* uniphier_priv (int ) ;

__attribute__((used)) static int uniphier_aio_compr_free(struct snd_compr_stream *cstream)
{
 struct snd_soc_pcm_runtime *rtd = cstream->private_data;
 struct uniphier_aio *aio = uniphier_priv(rtd->cpu_dai);
 struct uniphier_aio_sub *sub = &aio->sub[cstream->direction];
 int ret;

 ret = uniphier_aio_compr_hw_free(cstream);
 if (ret)
  return ret;
 ret = uniphier_aio_comprdma_free(rtd);
 if (ret)
  return ret;

 sub->cstream = ((void*)0);

 return 0;
}
