
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct page {int dummy; } ;
struct TYPE_2__ {void* dma_area; } ;


 struct page* virt_to_page (void*) ;

__attribute__((used)) static inline struct page *
snd_pcm_default_page_ops(struct snd_pcm_substream *substream, unsigned long ofs)
{
 void *vaddr = substream->runtime->dma_area + ofs;
 return virt_to_page(vaddr);
}
