
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dmaengine_pcm_config {char const** chan_names; struct device* dma_dev; int compat_filter_fn; int prepare_slave_config; } ;
struct device {int dummy; } ;
typedef int dma_filter_fn ;


 int ENOMEM ;
 int GFP_KERNEL ;
 size_t SNDRV_PCM_STREAM_CAPTURE ;
 size_t SNDRV_PCM_STREAM_PLAYBACK ;
 int SND_DMAENGINE_PCM_FLAG_COMPAT ;
 struct snd_dmaengine_pcm_config* devm_kzalloc (struct device*,int,int ) ;
 int devm_snd_dmaengine_pcm_register (struct device*,struct snd_dmaengine_pcm_config*,int ) ;
 int snd_dmaengine_pcm_prepare_slave_config ;

int samsung_asoc_dma_platform_register(struct device *dev, dma_filter_fn filter,
           const char *tx, const char *rx,
           struct device *dma_dev)
{
 struct snd_dmaengine_pcm_config *pcm_conf;

 pcm_conf = devm_kzalloc(dev, sizeof(*pcm_conf), GFP_KERNEL);
 if (!pcm_conf)
  return -ENOMEM;

 pcm_conf->prepare_slave_config = snd_dmaengine_pcm_prepare_slave_config;
 pcm_conf->compat_filter_fn = filter;
 pcm_conf->dma_dev = dma_dev;

 pcm_conf->chan_names[SNDRV_PCM_STREAM_PLAYBACK] = tx;
 pcm_conf->chan_names[SNDRV_PCM_STREAM_CAPTURE] = rx;

 return devm_snd_dmaengine_pcm_register(dev, pcm_conf,
    SND_DMAENGINE_PCM_FLAG_COMPAT);
}
