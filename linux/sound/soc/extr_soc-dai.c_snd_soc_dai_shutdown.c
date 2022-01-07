
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_dai {TYPE_2__* driver; } ;
struct snd_pcm_substream {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* shutdown ) (struct snd_pcm_substream*,struct snd_soc_dai*) ;} ;


 int stub1 (struct snd_pcm_substream*,struct snd_soc_dai*) ;

void snd_soc_dai_shutdown(struct snd_soc_dai *dai,
    struct snd_pcm_substream *substream)
{
 if (dai->driver->ops->shutdown)
  dai->driver->ops->shutdown(substream, dai);
}
