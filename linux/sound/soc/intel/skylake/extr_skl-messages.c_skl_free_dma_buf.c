
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dma_buffer {int dummy; } ;
struct device {int dummy; } ;


 int snd_dma_free_pages (struct snd_dma_buffer*) ;

__attribute__((used)) static int skl_free_dma_buf(struct device *dev, struct snd_dma_buffer *dmab)
{
 snd_dma_free_pages(dmab);
 return 0;
}
