
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uniphier_aio_sub {TYPE_1__* swm; int pass_through; int params; } ;
struct uniphier_aio {struct uniphier_aio_sub* sub; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {size_t stream; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 scalar_t__ PORT_TYPE_CONV ;
 int aio_if_set_param (struct uniphier_aio_sub*,int ) ;
 int aio_port_set_enable (struct uniphier_aio_sub*,int) ;
 int aio_port_set_param (struct uniphier_aio_sub*,int ,int *) ;
 int aio_src_set_param (struct uniphier_aio_sub*,int *) ;
 int aio_srcch_set_enable (struct uniphier_aio_sub*,int) ;
 int aio_srcch_set_param (struct uniphier_aio_sub*) ;
 int aio_srcif_set_param (struct uniphier_aio_sub*) ;
 struct uniphier_aio* uniphier_priv (struct snd_soc_dai*) ;

__attribute__((used)) static int uniphier_aio_prepare(struct snd_pcm_substream *substream,
    struct snd_soc_dai *dai)
{
 struct uniphier_aio *aio = uniphier_priv(dai);
 struct uniphier_aio_sub *sub = &aio->sub[substream->stream];
 int ret;

 ret = aio_port_set_param(sub, sub->pass_through, &sub->params);
 if (ret)
  return ret;
 ret = aio_src_set_param(sub, &sub->params);
 if (ret)
  return ret;
 aio_port_set_enable(sub, 1);

 ret = aio_if_set_param(sub, sub->pass_through);
 if (ret)
  return ret;

 if (sub->swm->type == PORT_TYPE_CONV) {
  ret = aio_srcif_set_param(sub);
  if (ret)
   return ret;
  ret = aio_srcch_set_param(sub);
  if (ret)
   return ret;
  aio_srcch_set_enable(sub, 1);
 }

 return 0;
}
