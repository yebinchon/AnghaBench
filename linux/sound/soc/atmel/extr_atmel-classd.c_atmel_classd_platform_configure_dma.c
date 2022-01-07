
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int card; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct dma_slave_config {int dst_maxburst; int src_maxburst; int device_fc; scalar_t__ dst_addr; int direction; int dst_addr_width; } ;
struct atmel_classd {scalar_t__ phy_base; int dev; } ;


 scalar_t__ CLASSD_THR ;
 int DMA_MEM_TO_DEV ;
 int DMA_SLAVE_BUSWIDTH_2_BYTES ;
 int DMA_SLAVE_BUSWIDTH_4_BYTES ;
 int EINVAL ;
 int dev_err (int ,char*) ;
 int params_channels (struct snd_pcm_hw_params*) ;
 int params_physical_width (struct snd_pcm_hw_params*) ;
 struct atmel_classd* snd_soc_card_get_drvdata (int ) ;

__attribute__((used)) static int
atmel_classd_platform_configure_dma(struct snd_pcm_substream *substream,
 struct snd_pcm_hw_params *params,
 struct dma_slave_config *slave_config)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct atmel_classd *dd = snd_soc_card_get_drvdata(rtd->card);

 if (params_physical_width(params) != 16) {
  dev_err(dd->dev,
   "only supports 16-bit audio data\n");
  return -EINVAL;
 }

 if (params_channels(params) == 1)
  slave_config->dst_addr_width = DMA_SLAVE_BUSWIDTH_2_BYTES;
 else
  slave_config->dst_addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;

 slave_config->direction = DMA_MEM_TO_DEV;
 slave_config->dst_addr = dd->phy_base + CLASSD_THR;
 slave_config->dst_maxburst = 1;
 slave_config->src_maxburst = 1;
 slave_config->device_fc = 0;

 return 0;
}
