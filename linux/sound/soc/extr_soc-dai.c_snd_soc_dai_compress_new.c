
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {int dummy; } ;
struct snd_soc_dai {TYPE_1__* driver; } ;
struct TYPE_2__ {int (* compress_new ) (struct snd_soc_pcm_runtime*,int) ;} ;


 int ENOTSUPP ;
 int stub1 (struct snd_soc_pcm_runtime*,int) ;

int snd_soc_dai_compress_new(struct snd_soc_dai *dai,
        struct snd_soc_pcm_runtime *rtd, int num)
{
 if (dai->driver->compress_new)
  return dai->driver->compress_new(rtd, num);
 return -ENOTSUPP;
}
