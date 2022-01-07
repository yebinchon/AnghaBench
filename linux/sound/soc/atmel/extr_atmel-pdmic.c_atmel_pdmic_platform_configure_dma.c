
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int card; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct dma_slave_config {int src_maxburst; int dst_maxburst; scalar_t__ src_addr; } ;
struct atmel_pdmic {scalar_t__ phy_base; int dev; } ;


 scalar_t__ PDMIC_CDR ;
 int dev_err (int ,char*) ;
 int snd_hwparams_to_dma_slave_config (struct snd_pcm_substream*,struct snd_pcm_hw_params*,struct dma_slave_config*) ;
 struct atmel_pdmic* snd_soc_card_get_drvdata (int ) ;

__attribute__((used)) static int
atmel_pdmic_platform_configure_dma(struct snd_pcm_substream *substream,
    struct snd_pcm_hw_params *params,
    struct dma_slave_config *slave_config)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct atmel_pdmic *dd = snd_soc_card_get_drvdata(rtd->card);
 int ret;

 ret = snd_hwparams_to_dma_slave_config(substream, params,
            slave_config);
 if (ret) {
  dev_err(dd->dev,
   "hw params to dma slave configure failed\n");
  return ret;
 }

 slave_config->src_addr = dd->phy_base + PDMIC_CDR;
 slave_config->src_maxburst = 1;
 slave_config->dst_maxburst = 1;

 return 0;
}
