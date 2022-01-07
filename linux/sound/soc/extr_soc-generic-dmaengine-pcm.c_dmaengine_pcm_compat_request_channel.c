
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {int cpu_dai; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_dmaengine_dai_dma_data {int filter_data; } ;
struct dmaengine_pcm {int flags; TYPE_1__* config; struct dma_chan** chan; } ;
struct dma_chan {int dummy; } ;
typedef int * dma_filter_fn ;
struct TYPE_2__ {int * compat_filter_fn; struct dma_chan* (* compat_request_channel ) (struct snd_soc_pcm_runtime*,struct snd_pcm_substream*) ;} ;


 int SND_DMAENGINE_PCM_DRV_NAME ;
 int SND_DMAENGINE_PCM_FLAG_HALF_DUPLEX ;
 struct dma_chan* snd_dmaengine_pcm_request_channel (int *,int ) ;
 struct snd_dmaengine_dai_dma_data* snd_soc_dai_get_dma_data (int ,struct snd_pcm_substream*) ;
 struct snd_soc_component* snd_soc_rtdcom_lookup (struct snd_soc_pcm_runtime*,int ) ;
 struct dmaengine_pcm* soc_component_to_pcm (struct snd_soc_component*) ;
 struct dma_chan* stub1 (struct snd_soc_pcm_runtime*,struct snd_pcm_substream*) ;

__attribute__((used)) static struct dma_chan *dmaengine_pcm_compat_request_channel(
 struct snd_soc_pcm_runtime *rtd,
 struct snd_pcm_substream *substream)
{
 struct snd_soc_component *component =
  snd_soc_rtdcom_lookup(rtd, SND_DMAENGINE_PCM_DRV_NAME);
 struct dmaengine_pcm *pcm = soc_component_to_pcm(component);
 struct snd_dmaengine_dai_dma_data *dma_data;
 dma_filter_fn fn = ((void*)0);

 dma_data = snd_soc_dai_get_dma_data(rtd->cpu_dai, substream);

 if ((pcm->flags & SND_DMAENGINE_PCM_FLAG_HALF_DUPLEX) && pcm->chan[0])
  return pcm->chan[0];

 if (pcm->config && pcm->config->compat_request_channel)
  return pcm->config->compat_request_channel(rtd, substream);

 if (pcm->config)
  fn = pcm->config->compat_filter_fn;

 return snd_dmaengine_pcm_request_channel(fn, dma_data->filter_data);
}
