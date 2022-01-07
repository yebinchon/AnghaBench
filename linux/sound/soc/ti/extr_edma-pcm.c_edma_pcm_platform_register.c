
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dmaengine_pcm_config {char** chan_names; } ;
struct device {scalar_t__ of_node; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct snd_dmaengine_pcm_config* devm_kzalloc (struct device*,int,int ) ;
 int devm_snd_dmaengine_pcm_register (struct device*,struct snd_dmaengine_pcm_config*,int ) ;
 struct snd_dmaengine_pcm_config edma_dmaengine_pcm_config ;

int edma_pcm_platform_register(struct device *dev)
{
 struct snd_dmaengine_pcm_config *config;

 if (dev->of_node)
  return devm_snd_dmaengine_pcm_register(dev,
      &edma_dmaengine_pcm_config, 0);

 config = devm_kzalloc(dev, sizeof(*config), GFP_KERNEL);
 if (!config)
  return -ENOMEM;

 *config = edma_dmaengine_pcm_config;

 config->chan_names[0] = "tx";
 config->chan_names[1] = "rx";

 return devm_snd_dmaengine_pcm_register(dev, config, 0);
}
