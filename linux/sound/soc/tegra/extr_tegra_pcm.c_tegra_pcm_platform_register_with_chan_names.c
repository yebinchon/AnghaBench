
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dmaengine_pcm_config {char** chan_names; int dma_dev; } ;
struct device {int parent; } ;


 int snd_dmaengine_pcm_register (struct device*,struct snd_dmaengine_pcm_config*,int ) ;
 struct snd_dmaengine_pcm_config tegra_dmaengine_pcm_config ;

int tegra_pcm_platform_register_with_chan_names(struct device *dev,
    struct snd_dmaengine_pcm_config *config,
    char *txdmachan, char *rxdmachan)
{
 *config = tegra_dmaengine_pcm_config;
 config->dma_dev = dev->parent;
 config->chan_names[0] = txdmachan;
 config->chan_names[1] = rxdmachan;

 return snd_dmaengine_pcm_register(dev, config, 0);
}
