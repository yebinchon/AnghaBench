
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {scalar_t__ stream; } ;
struct snd_dmaengine_dai_dma_data {int flags; scalar_t__ addr_width; int slave_id; int maxburst; int addr; } ;
struct dma_slave_config {scalar_t__ dst_addr_width; scalar_t__ src_addr_width; int slave_id; int src_maxburst; int src_addr; int dst_maxburst; int dst_addr; } ;


 scalar_t__ DMA_SLAVE_BUSWIDTH_UNDEFINED ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int SND_DMAENGINE_PCM_DAI_FLAG_PACK ;

void snd_dmaengine_pcm_set_config_from_dai_data(
 const struct snd_pcm_substream *substream,
 const struct snd_dmaengine_dai_dma_data *dma_data,
 struct dma_slave_config *slave_config)
{
 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
  slave_config->dst_addr = dma_data->addr;
  slave_config->dst_maxburst = dma_data->maxburst;
  if (dma_data->flags & SND_DMAENGINE_PCM_DAI_FLAG_PACK)
   slave_config->dst_addr_width =
    DMA_SLAVE_BUSWIDTH_UNDEFINED;
  if (dma_data->addr_width != DMA_SLAVE_BUSWIDTH_UNDEFINED)
   slave_config->dst_addr_width = dma_data->addr_width;
 } else {
  slave_config->src_addr = dma_data->addr;
  slave_config->src_maxburst = dma_data->maxburst;
  if (dma_data->flags & SND_DMAENGINE_PCM_DAI_FLAG_PACK)
   slave_config->src_addr_width =
    DMA_SLAVE_BUSWIDTH_UNDEFINED;
  if (dma_data->addr_width != DMA_SLAVE_BUSWIDTH_UNDEFINED)
   slave_config->src_addr_width = dma_data->addr_width;
 }

 slave_config->slave_id = dma_data->slave_id;
}
