
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int SND_DMAENGINE_PCM_FLAG_HALF_DUPLEX ;
 int devm_snd_dmaengine_pcm_register (struct device*,int *,int ) ;
 int mxs_dmaengine_pcm_config ;

int mxs_pcm_platform_register(struct device *dev)
{
 return devm_snd_dmaengine_pcm_register(dev, &mxs_dmaengine_pcm_config,
  SND_DMAENGINE_PCM_FLAG_HALF_DUPLEX);
}
