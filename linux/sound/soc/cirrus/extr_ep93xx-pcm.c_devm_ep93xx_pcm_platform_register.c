
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int SND_DMAENGINE_PCM_FLAG_COMPAT ;
 int SND_DMAENGINE_PCM_FLAG_NO_DT ;
 int devm_snd_dmaengine_pcm_register (struct device*,int *,int) ;
 int ep93xx_dmaengine_pcm_config ;

int devm_ep93xx_pcm_platform_register(struct device *dev)
{
 return devm_snd_dmaengine_pcm_register(dev,
  &ep93xx_dmaengine_pcm_config,
  SND_DMAENGINE_PCM_FLAG_NO_DT |
  SND_DMAENGINE_PCM_FLAG_COMPAT);
}
