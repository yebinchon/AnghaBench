
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_page_prot; scalar_t__ vm_start; scalar_t__ vm_end; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dma_addr; } ;


 int PAGE_SHIFT ;
 int pgprot_writecombine (int ) ;
 int remap_pfn_range (struct vm_area_struct*,scalar_t__,int,scalar_t__,int ) ;

__attribute__((used)) static int sprd_pcm_mmap(struct snd_pcm_substream *substream,
    struct vm_area_struct *vma)
{
 struct snd_pcm_runtime *runtime = substream->runtime;

 vma->vm_page_prot = pgprot_writecombine(vma->vm_page_prot);
 return remap_pfn_range(vma, vma->vm_start,
          runtime->dma_addr >> PAGE_SHIFT,
          vma->vm_end - vma->vm_start,
          vma->vm_page_prot);
}
