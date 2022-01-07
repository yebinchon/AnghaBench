
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_end; unsigned long vm_start; unsigned long vm_pgoff; int vm_page_prot; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {unsigned long dma_addr; } ;


 unsigned long PAGE_SHIFT ;
 int io_remap_pfn_range (struct vm_area_struct*,unsigned long,unsigned long,unsigned long,int ) ;
 int pgprot_noncached (int ) ;

__attribute__((used)) static int idma_mmap(struct snd_pcm_substream *substream,
 struct vm_area_struct *vma)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 unsigned long size, offset;
 int ret;


 vma->vm_page_prot = pgprot_noncached(vma->vm_page_prot);
 size = vma->vm_end - vma->vm_start;
 offset = vma->vm_pgoff << PAGE_SHIFT;
 ret = io_remap_pfn_range(vma, vma->vm_start,
   (runtime->dma_addr + offset) >> PAGE_SHIFT,
   size, vma->vm_page_prot);

 return ret;
}
