
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_aio_sub {int * substream; } ;
struct uniphier_aio {struct uniphier_aio_sub* sub; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {size_t stream; } ;


 struct uniphier_aio* uniphier_priv (struct snd_soc_dai*) ;

__attribute__((used)) static void uniphier_aio_shutdown(struct snd_pcm_substream *substream,
      struct snd_soc_dai *dai)
{
 struct uniphier_aio *aio = uniphier_priv(dai);
 struct uniphier_aio_sub *sub = &aio->sub[substream->stream];

 sub->substream = ((void*)0);
}
