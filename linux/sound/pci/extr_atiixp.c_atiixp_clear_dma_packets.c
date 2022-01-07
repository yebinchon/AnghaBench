
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
struct TYPE_4__ {int * area; } ;
struct atiixp_dma {TYPE_2__ desc_buf; TYPE_1__* ops; } ;
struct atiixp {scalar_t__ remap_addr; } ;
struct TYPE_3__ {scalar_t__ llp_offset; } ;


 int snd_dma_free_pages (TYPE_2__*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void atiixp_clear_dma_packets(struct atiixp *chip, struct atiixp_dma *dma,
         struct snd_pcm_substream *substream)
{
 if (dma->desc_buf.area) {
  writel(0, chip->remap_addr + dma->ops->llp_offset);
  snd_dma_free_pages(&dma->desc_buf);
  dma->desc_buf.area = ((void*)0);
 }
}
