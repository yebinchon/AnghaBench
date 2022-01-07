
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssc_device {scalar_t__ phybase; } ;
struct snd_soc_pcm_runtime {int cpu_dai; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct dma_slave_config {int dst_maxburst; int src_maxburst; scalar_t__ src_addr; scalar_t__ dst_addr; } ;
struct atmel_pcm_dma_params {int dma_intr_handler; struct ssc_device* ssc; } ;


 scalar_t__ SSC_RHR ;
 scalar_t__ SSC_THR ;
 int atmel_pcm_dma_irq ;
 int pr_err (char*) ;
 int snd_hwparams_to_dma_slave_config (struct snd_pcm_substream*,struct snd_pcm_hw_params*,struct dma_slave_config*) ;
 struct atmel_pcm_dma_params* snd_soc_dai_get_dma_data (int ,struct snd_pcm_substream*) ;

__attribute__((used)) static int atmel_pcm_configure_dma(struct snd_pcm_substream *substream,
 struct snd_pcm_hw_params *params, struct dma_slave_config *slave_config)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct atmel_pcm_dma_params *prtd;
 struct ssc_device *ssc;
 int ret;

 prtd = snd_soc_dai_get_dma_data(rtd->cpu_dai, substream);
 ssc = prtd->ssc;

 ret = snd_hwparams_to_dma_slave_config(substream, params, slave_config);
 if (ret) {
  pr_err("atmel-pcm: hwparams to dma slave configure failed\n");
  return ret;
 }

 slave_config->dst_addr = ssc->phybase + SSC_THR;
 slave_config->dst_maxburst = 1;

 slave_config->src_addr = ssc->phybase + SSC_RHR;
 slave_config->src_maxburst = 1;

 prtd->dma_intr_handler = atmel_pcm_dma_irq;

 return 0;
}
