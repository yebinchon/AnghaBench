
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dmaengine_pcm_config {int (* compat_filter_fn ) (struct dma_chan*,void*) ;} ;
struct device {int dummy; } ;


 int SND_DMAENGINE_PCM_FLAG_COMPAT ;
 int SND_DMAENGINE_PCM_FLAG_NO_DT ;
 int devm_snd_dmaengine_pcm_register (struct device*,struct snd_dmaengine_pcm_config*,int) ;
 struct snd_dmaengine_pcm_config spear_dmaengine_pcm_config ;

int devm_spear_pcm_platform_register(struct device *dev,
   struct snd_dmaengine_pcm_config *config,
   bool (*filter)(struct dma_chan *chan, void *slave))
{
 *config = spear_dmaengine_pcm_config;
 config->compat_filter_fn = filter;

 return devm_snd_dmaengine_pcm_register(dev, config,
  SND_DMAENGINE_PCM_FLAG_NO_DT |
  SND_DMAENGINE_PCM_FLAG_COMPAT);
}
