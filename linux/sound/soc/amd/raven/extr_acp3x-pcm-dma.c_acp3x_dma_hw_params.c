
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int addr; scalar_t__ area; } ;
struct snd_pcm_substream {int stream; TYPE_1__ dma_buffer; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dma_area; struct i2s_stream_instance* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct i2s_stream_instance {int num_pages; int dma_addr; } ;


 int EINVAL ;
 int ENOMEM ;
 int PAGE_ALIGN (int ) ;
 int PAGE_SHIFT ;
 int config_acp3x_dma (struct i2s_stream_instance*,int ) ;
 int memset (int ,int ,int ) ;
 int params_buffer_bytes (struct snd_pcm_hw_params*) ;
 int snd_pcm_lib_malloc_pages (struct snd_pcm_substream*,int ) ;

__attribute__((used)) static int acp3x_dma_hw_params(struct snd_pcm_substream *substream,
          struct snd_pcm_hw_params *params)
{
 int status;
 u64 size;
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct i2s_stream_instance *rtd = runtime->private_data;

 if (!rtd)
  return -EINVAL;

 size = params_buffer_bytes(params);
 status = snd_pcm_lib_malloc_pages(substream, size);
 if (status < 0)
  return status;

 memset(substream->runtime->dma_area, 0, params_buffer_bytes(params));
 if (substream->dma_buffer.area) {
  rtd->dma_addr = substream->dma_buffer.addr;
  rtd->num_pages = (PAGE_ALIGN(size) >> PAGE_SHIFT);
  config_acp3x_dma(rtd, substream->stream);
  status = 0;
 } else {
  status = -ENOMEM;
 }
 return status;
}
