
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int SND_DMAENGINE_PCM_FLAG_COMPAT ;
 int devm_snd_dmaengine_pcm_register (struct device*,int *,int ) ;
 int rk_dmaengine_pcm_config ;

int rockchip_pcm_platform_register(struct device *dev)
{
 return devm_snd_dmaengine_pcm_register(dev, &rk_dmaengine_pcm_config,
  SND_DMAENGINE_PCM_FLAG_COMPAT);
}
