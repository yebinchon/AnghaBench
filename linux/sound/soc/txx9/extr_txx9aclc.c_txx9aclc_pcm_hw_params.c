
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct txx9aclc_dmadata {scalar_t__ pos; struct snd_pcm_substream* substream; } ;
struct snd_soc_pcm_runtime {int dummy; } ;
struct snd_soc_component {int dev; } ;
struct snd_pcm_substream {int stream; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int min_align; int dma_bytes; scalar_t__ dma_addr; scalar_t__ dma_area; struct txx9aclc_dmadata* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int DRV_NAME ;
 int dev_dbg (int ,char*,unsigned long,unsigned long,int ,...) ;
 int params_buffer_bytes (struct snd_pcm_hw_params*) ;
 int params_period_bytes (struct snd_pcm_hw_params*) ;
 int params_periods (struct snd_pcm_hw_params*) ;
 int snd_pcm_lib_malloc_pages (struct snd_pcm_substream*,int ) ;
 struct snd_soc_pcm_runtime* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 struct snd_soc_component* snd_soc_rtdcom_lookup (struct snd_soc_pcm_runtime*,int ) ;

__attribute__((used)) static int txx9aclc_pcm_hw_params(struct snd_pcm_substream *substream,
      struct snd_pcm_hw_params *params)
{
 struct snd_soc_pcm_runtime *rtd = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_soc_component *component = snd_soc_rtdcom_lookup(rtd, DRV_NAME);
 struct txx9aclc_dmadata *dmadata = runtime->private_data;
 int ret;

 ret = snd_pcm_lib_malloc_pages(substream, params_buffer_bytes(params));
 if (ret < 0)
  return ret;

 dev_dbg(component->dev,
  "runtime->dma_area = %#lx dma_addr = %#lx dma_bytes = %zd "
  "runtime->min_align %ld\n",
  (unsigned long)runtime->dma_area,
  (unsigned long)runtime->dma_addr, runtime->dma_bytes,
  runtime->min_align);
 dev_dbg(component->dev,
  "periods %d period_bytes %d stream %d\n",
  params_periods(params), params_period_bytes(params),
  substream->stream);

 dmadata->substream = substream;
 dmadata->pos = 0;
 return 0;
}
