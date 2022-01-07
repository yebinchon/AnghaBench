
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dma_buffer {int dummy; } ;
struct device {int dummy; } ;


 int SNDRV_DMA_TYPE_DEV ;
 int snd_dma_alloc_pages (int ,struct device*,size_t,struct snd_dma_buffer*) ;

__attribute__((used)) static int skl_alloc_dma_buf(struct device *dev,
  struct snd_dma_buffer *dmab, size_t size)
{
 return snd_dma_alloc_pages(SNDRV_DMA_TYPE_DEV, dev, size, dmab);
}
