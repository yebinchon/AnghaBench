
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_codec {int dummy; } ;
struct TYPE_2__ {struct snd_codec codec; } ;
struct uniphier_aio_sub {TYPE_1__ cparams; } ;
struct uniphier_aio {struct uniphier_aio_sub* sub; } ;
struct snd_soc_pcm_runtime {int cpu_dai; } ;
struct snd_compr_stream {size_t direction; struct snd_soc_pcm_runtime* private_data; } ;


 struct uniphier_aio* uniphier_priv (int ) ;

__attribute__((used)) static int uniphier_aio_compr_get_params(struct snd_compr_stream *cstream,
      struct snd_codec *params)
{
 struct snd_soc_pcm_runtime *rtd = cstream->private_data;
 struct uniphier_aio *aio = uniphier_priv(rtd->cpu_dai);
 struct uniphier_aio_sub *sub = &aio->sub[cstream->direction];

 *params = sub->cparams.codec;

 return 0;
}
