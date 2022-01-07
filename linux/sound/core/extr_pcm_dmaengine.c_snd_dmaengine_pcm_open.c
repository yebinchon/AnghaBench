
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct dmaengine_pcm_runtime_data {struct dma_chan* dma_chan; } ;
struct dma_chan {int dummy; } ;
struct TYPE_2__ {struct dmaengine_pcm_runtime_data* private_data; } ;


 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int SNDRV_PCM_HW_PARAM_PERIODS ;
 struct dmaengine_pcm_runtime_data* kzalloc (int,int ) ;
 int snd_pcm_hw_constraint_integer (TYPE_1__*,int ) ;

int snd_dmaengine_pcm_open(struct snd_pcm_substream *substream,
 struct dma_chan *chan)
{
 struct dmaengine_pcm_runtime_data *prtd;
 int ret;

 if (!chan)
  return -ENXIO;

 ret = snd_pcm_hw_constraint_integer(substream->runtime,
         SNDRV_PCM_HW_PARAM_PERIODS);
 if (ret < 0)
  return ret;

 prtd = kzalloc(sizeof(*prtd), GFP_KERNEL);
 if (!prtd)
  return -ENOMEM;

 prtd->dma_chan = chan;

 substream->runtime->private_data = prtd;

 return 0;
}
