
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_dmaengine_pcm_config {scalar_t__ process; } ;
struct TYPE_2__ {char* debugfs_prefix; } ;
struct dmaengine_pcm {unsigned int flags; TYPE_1__ component; struct snd_dmaengine_pcm_config const* config; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dmaengine_pcm_component ;
 int dmaengine_pcm_component_process ;
 int dmaengine_pcm_release_chan (struct dmaengine_pcm*) ;
 int dmaengine_pcm_request_chan_of (struct dmaengine_pcm*,struct device*,struct snd_dmaengine_pcm_config const*) ;
 int kfree (struct dmaengine_pcm*) ;
 struct dmaengine_pcm* kzalloc (int,int ) ;
 int snd_soc_add_component (struct device*,TYPE_1__*,int *,int *,int ) ;

int snd_dmaengine_pcm_register(struct device *dev,
 const struct snd_dmaengine_pcm_config *config, unsigned int flags)
{
 struct dmaengine_pcm *pcm;
 int ret;

 pcm = kzalloc(sizeof(*pcm), GFP_KERNEL);
 if (!pcm)
  return -ENOMEM;




 pcm->config = config;
 pcm->flags = flags;

 ret = dmaengine_pcm_request_chan_of(pcm, dev, config);
 if (ret)
  goto err_free_dma;

 if (config && config->process)
  ret = snd_soc_add_component(dev, &pcm->component,
         &dmaengine_pcm_component_process,
         ((void*)0), 0);
 else
  ret = snd_soc_add_component(dev, &pcm->component,
         &dmaengine_pcm_component, ((void*)0), 0);
 if (ret)
  goto err_free_dma;

 return 0;

err_free_dma:
 dmaengine_pcm_release_chan(pcm);
 kfree(pcm);
 return ret;
}
