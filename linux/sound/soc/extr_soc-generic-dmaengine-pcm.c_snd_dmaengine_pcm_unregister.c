
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct dmaengine_pcm {int dummy; } ;
struct device {int dummy; } ;


 int SND_DMAENGINE_PCM_DRV_NAME ;
 int dmaengine_pcm_release_chan (struct dmaengine_pcm*) ;
 int kfree (struct dmaengine_pcm*) ;
 struct snd_soc_component* snd_soc_lookup_component (struct device*,int ) ;
 int snd_soc_unregister_component (struct device*) ;
 struct dmaengine_pcm* soc_component_to_pcm (struct snd_soc_component*) ;

void snd_dmaengine_pcm_unregister(struct device *dev)
{
 struct snd_soc_component *component;
 struct dmaengine_pcm *pcm;

 component = snd_soc_lookup_component(dev, SND_DMAENGINE_PCM_DRV_NAME);
 if (!component)
  return;

 pcm = soc_component_to_pcm(component);

 snd_soc_unregister_component(dev);
 dmaengine_pcm_release_chan(pcm);
 kfree(pcm);
}
