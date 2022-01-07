
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dmaengine_pcm_config {char** chan_names; struct device* dma_dev; } ;
struct dmaengine_pcm {int flags; struct dma_chan** chan; } ;
struct dma_chan {int dummy; } ;
struct device {scalar_t__ of_node; } ;


 int EPROBE_DEFER ;
 scalar_t__ IS_ERR (struct dma_chan*) ;
 int PTR_ERR (struct dma_chan*) ;
 unsigned int SNDRV_PCM_STREAM_CAPTURE ;
 unsigned int SNDRV_PCM_STREAM_PLAYBACK ;
 int SND_DMAENGINE_PCM_FLAG_HALF_DUPLEX ;
 int SND_DMAENGINE_PCM_FLAG_NO_DT ;
 int dev_name (struct device*) ;
 int dev_warn (struct device*,char*,int ) ;
 struct dma_chan* dma_request_slave_channel_reason (struct device*,char const*) ;
 char** dmaengine_pcm_dma_channel_names ;

__attribute__((used)) static int dmaengine_pcm_request_chan_of(struct dmaengine_pcm *pcm,
 struct device *dev, const struct snd_dmaengine_pcm_config *config)
{
 unsigned int i;
 const char *name;
 struct dma_chan *chan;

 if ((pcm->flags & SND_DMAENGINE_PCM_FLAG_NO_DT) || (!dev->of_node &&
     !(config && config->dma_dev && config->dma_dev->of_node)))
  return 0;

 if (config && config->dma_dev) {






  dev_warn(dev, "DMA channels sourced from device %s",
    dev_name(config->dma_dev));
  dev = config->dma_dev;
 }

 for (i = SNDRV_PCM_STREAM_PLAYBACK; i <= SNDRV_PCM_STREAM_CAPTURE;
      i++) {
  if (pcm->flags & SND_DMAENGINE_PCM_FLAG_HALF_DUPLEX)
   name = "rx-tx";
  else
   name = dmaengine_pcm_dma_channel_names[i];
  if (config && config->chan_names[i])
   name = config->chan_names[i];
  chan = dma_request_slave_channel_reason(dev, name);
  if (IS_ERR(chan)) {
   if (PTR_ERR(chan) == -EPROBE_DEFER)
    return -EPROBE_DEFER;
   pcm->chan[i] = ((void*)0);
  } else {
   pcm->chan[i] = chan;
  }
  if (pcm->flags & SND_DMAENGINE_PCM_FLAG_HALF_DUPLEX)
   break;
 }

 if (pcm->flags & SND_DMAENGINE_PCM_FLAG_HALF_DUPLEX)
  pcm->chan[1] = pcm->chan[0];

 return 0;
}
