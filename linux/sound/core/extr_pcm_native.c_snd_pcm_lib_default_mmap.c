
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vm_area_struct {int vm_flags; int * vm_ops; int vm_page_prot; scalar_t__ vm_start; scalar_t__ vm_end; } ;
struct TYPE_6__ {scalar_t__ type; int dev; } ;
struct TYPE_7__ {int addr; TYPE_2__ dev; } ;
struct snd_pcm_substream {TYPE_4__* runtime; TYPE_3__ dma_buffer; TYPE_1__* ops; } ;
struct TYPE_8__ {int dma_bytes; int dma_addr; int dma_area; } ;
struct TYPE_5__ {int page; } ;


 int CONFIG_HAS_DMA ;
 scalar_t__ IS_ENABLED (int ) ;
 int PAGE_SHIFT ;
 scalar_t__ SNDRV_DMA_TYPE_DEV ;
 scalar_t__ SNDRV_DMA_TYPE_DEV_IRAM ;
 int VM_DONTDUMP ;
 int VM_DONTEXPAND ;
 int dma_mmap_coherent (int ,struct vm_area_struct*,int ,int ,int ) ;
 int pgprot_writecombine (int ) ;
 int remap_pfn_range (struct vm_area_struct*,scalar_t__,int,scalar_t__,int ) ;
 int snd_pcm_vm_ops_data_fault ;

int snd_pcm_lib_default_mmap(struct snd_pcm_substream *substream,
        struct vm_area_struct *area)
{
 area->vm_flags |= VM_DONTEXPAND | VM_DONTDUMP;
 if (IS_ENABLED(CONFIG_HAS_DMA) && !substream->ops->page &&
     substream->dma_buffer.dev.type == SNDRV_DMA_TYPE_DEV)
  return dma_mmap_coherent(substream->dma_buffer.dev.dev,
      area,
      substream->runtime->dma_area,
      substream->runtime->dma_addr,
      substream->runtime->dma_bytes);


 area->vm_ops = &snd_pcm_vm_ops_data_fault;
 return 0;
}
