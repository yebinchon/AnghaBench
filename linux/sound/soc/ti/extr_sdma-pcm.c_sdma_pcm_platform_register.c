
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dmaengine_pcm_config {char** chan_names; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned int SND_DMAENGINE_PCM_FLAG_HALF_DUPLEX ;
 struct snd_dmaengine_pcm_config* devm_kzalloc (struct device*,int,int ) ;
 int devm_snd_dmaengine_pcm_register (struct device*,struct snd_dmaengine_pcm_config*,unsigned int) ;
 struct snd_dmaengine_pcm_config sdma_dmaengine_pcm_config ;

int sdma_pcm_platform_register(struct device *dev,
          char *txdmachan, char *rxdmachan)
{
 struct snd_dmaengine_pcm_config *config;
 unsigned int flags = 0;


 if (!txdmachan && !rxdmachan)
  return devm_snd_dmaengine_pcm_register(dev,
      &sdma_dmaengine_pcm_config, 0);

 config = devm_kzalloc(dev, sizeof(*config), GFP_KERNEL);
 if (!config)
  return -ENOMEM;

 *config = sdma_dmaengine_pcm_config;

 if (!txdmachan || !rxdmachan) {

  flags |= SND_DMAENGINE_PCM_FLAG_HALF_DUPLEX;
  if (!txdmachan) {
   txdmachan = rxdmachan;
   rxdmachan = ((void*)0);
  }
 }

 config->chan_names[0] = txdmachan;
 config->chan_names[1] = rxdmachan;

 return devm_snd_dmaengine_pcm_register(dev, config, flags);
}
