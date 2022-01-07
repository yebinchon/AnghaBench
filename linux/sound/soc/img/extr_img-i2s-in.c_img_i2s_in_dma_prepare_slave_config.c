
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int cpu_dai; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_dmaengine_dai_dma_data {int addr_width; int addr; } ;
struct dma_slave_config {int src_maxburst; int src_addr_width; int src_addr; } ;


 int params_channels (struct snd_pcm_hw_params*) ;
 int snd_hwparams_to_dma_slave_config (struct snd_pcm_substream*,struct snd_pcm_hw_params*,struct dma_slave_config*) ;
 struct snd_dmaengine_dai_dma_data* snd_soc_dai_get_dma_data (int ,struct snd_pcm_substream*) ;

__attribute__((used)) static int img_i2s_in_dma_prepare_slave_config(struct snd_pcm_substream *st,
 struct snd_pcm_hw_params *params, struct dma_slave_config *sc)
{
 unsigned int i2s_channels = params_channels(params) / 2;
 struct snd_soc_pcm_runtime *rtd = st->private_data;
 struct snd_dmaengine_dai_dma_data *dma_data;
 int ret;

 dma_data = snd_soc_dai_get_dma_data(rtd->cpu_dai, st);

 ret = snd_hwparams_to_dma_slave_config(st, params, sc);
 if (ret)
  return ret;

 sc->src_addr = dma_data->addr;
 sc->src_addr_width = dma_data->addr_width;
 sc->src_maxburst = 4 * i2s_channels;

 return 0;
}
