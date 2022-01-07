
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int snd_dmaengine_pcm_register (struct device*,int *,int ) ;
 int tegra_dmaengine_pcm_config ;

int tegra_pcm_platform_register(struct device *dev)
{
 return snd_dmaengine_pcm_register(dev, &tegra_dmaengine_pcm_config, 0);
}
