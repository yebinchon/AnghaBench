
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int atmel_dmaengine_pcm_config ;
 int devm_snd_dmaengine_pcm_register (struct device*,int *,int ) ;

int atmel_pcm_dma_platform_register(struct device *dev)
{
 return devm_snd_dmaengine_pcm_register(dev,
     &atmel_dmaengine_pcm_config, 0);
}
