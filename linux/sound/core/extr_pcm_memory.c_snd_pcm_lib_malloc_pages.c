
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; int dev; } ;
struct snd_dma_buffer {size_t bytes; TYPE_2__ dev; int * area; } ;
struct snd_pcm_substream {struct snd_dma_buffer dma_buffer; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {size_t dma_bytes; TYPE_1__* dma_buffer_p; } ;
struct TYPE_3__ {size_t bytes; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ PCM_RUNTIME_CHECK (struct snd_pcm_substream*) ;
 scalar_t__ SNDRV_DMA_TYPE_UNKNOWN ;
 int kfree (struct snd_dma_buffer*) ;
 struct snd_dma_buffer* kzalloc (int,int ) ;
 scalar_t__ snd_BUG_ON (int) ;
 scalar_t__ snd_dma_alloc_pages (scalar_t__,int ,size_t,struct snd_dma_buffer*) ;
 int snd_pcm_lib_free_pages (struct snd_pcm_substream*) ;
 int snd_pcm_set_runtime_buffer (struct snd_pcm_substream*,struct snd_dma_buffer*) ;

int snd_pcm_lib_malloc_pages(struct snd_pcm_substream *substream, size_t size)
{
 struct snd_pcm_runtime *runtime;
 struct snd_dma_buffer *dmab = ((void*)0);

 if (PCM_RUNTIME_CHECK(substream))
  return -EINVAL;
 if (snd_BUG_ON(substream->dma_buffer.dev.type ==
         SNDRV_DMA_TYPE_UNKNOWN))
  return -EINVAL;
 runtime = substream->runtime;

 if (runtime->dma_buffer_p) {



  if (runtime->dma_buffer_p->bytes >= size) {
   runtime->dma_bytes = size;
   return 0;
  }
  snd_pcm_lib_free_pages(substream);
 }
 if (substream->dma_buffer.area != ((void*)0) &&
     substream->dma_buffer.bytes >= size) {
  dmab = &substream->dma_buffer;
 } else {
  dmab = kzalloc(sizeof(*dmab), GFP_KERNEL);
  if (! dmab)
   return -ENOMEM;
  dmab->dev = substream->dma_buffer.dev;
  if (snd_dma_alloc_pages(substream->dma_buffer.dev.type,
     substream->dma_buffer.dev.dev,
     size, dmab) < 0) {
   kfree(dmab);
   return -ENOMEM;
  }
 }
 snd_pcm_set_runtime_buffer(substream, dmab);
 runtime->dma_bytes = size;
 return 1;
}
