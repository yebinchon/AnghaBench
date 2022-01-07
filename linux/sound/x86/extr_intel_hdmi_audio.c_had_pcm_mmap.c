
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int vm_page_prot; scalar_t__ vm_start; scalar_t__ vm_end; } ;
struct TYPE_2__ {int addr; } ;
struct snd_pcm_substream {TYPE_1__ dma_buffer; } ;


 int PAGE_SHIFT ;
 int pgprot_noncached (int ) ;
 int remap_pfn_range (struct vm_area_struct*,scalar_t__,int,scalar_t__,int ) ;

__attribute__((used)) static int had_pcm_mmap(struct snd_pcm_substream *substream,
   struct vm_area_struct *vma)
{
 vma->vm_page_prot = pgprot_noncached(vma->vm_page_prot);
 return remap_pfn_range(vma, vma->vm_start,
   substream->dma_buffer.addr >> PAGE_SHIFT,
   vma->vm_end - vma->vm_start, vma->vm_page_prot);
}
