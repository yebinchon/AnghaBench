
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 void snd_dmaengine_pcm_unregister (struct device*) ;

void tegra_pcm_platform_unregister(struct device *dev)
{
 return snd_dmaengine_pcm_unregister(dev);
}
