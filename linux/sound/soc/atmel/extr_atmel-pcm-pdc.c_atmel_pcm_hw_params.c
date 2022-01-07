
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {int cpu_dai; } ;
struct snd_pcm_substream {int dma_buffer; struct snd_soc_pcm_runtime* private_data; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {scalar_t__ dma_bytes; scalar_t__ dma_addr; struct atmel_runtime_data* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct atmel_runtime_data {int period_size; TYPE_1__* params; scalar_t__ dma_buffer_end; scalar_t__ dma_buffer; } ;
struct TYPE_2__ {int name; int dma_intr_handler; } ;


 int atmel_pcm_dma_irq ;
 scalar_t__ params_buffer_bytes (struct snd_pcm_hw_params*) ;
 int params_period_bytes (struct snd_pcm_hw_params*) ;
 int pr_debug (char*,int ,scalar_t__,int ) ;
 int snd_pcm_set_runtime_buffer (struct snd_pcm_substream*,int *) ;
 TYPE_1__* snd_soc_dai_get_dma_data (int ,struct snd_pcm_substream*) ;

__attribute__((used)) static int atmel_pcm_hw_params(struct snd_pcm_substream *substream,
 struct snd_pcm_hw_params *params)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct atmel_runtime_data *prtd = runtime->private_data;
 struct snd_soc_pcm_runtime *rtd = substream->private_data;




 snd_pcm_set_runtime_buffer(substream, &substream->dma_buffer);
 runtime->dma_bytes = params_buffer_bytes(params);

 prtd->params = snd_soc_dai_get_dma_data(rtd->cpu_dai, substream);
 prtd->params->dma_intr_handler = atmel_pcm_dma_irq;

 prtd->dma_buffer = runtime->dma_addr;
 prtd->dma_buffer_end = runtime->dma_addr + runtime->dma_bytes;
 prtd->period_size = params_period_bytes(params);

 pr_debug("atmel-pcm: "
  "hw_params: DMA for %s initialized "
  "(dma_bytes=%zu, period_size=%zu)\n",
  prtd->params->name,
  runtime->dma_bytes,
  prtd->period_size);
 return 0;
}
