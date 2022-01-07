
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_pgoff; int vm_page_prot; scalar_t__ vm_start; scalar_t__ vm_end; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dma_addr; } ;


 scalar_t__ __phys_to_pfn (int ) ;
 int pgprot_noncached (int ) ;
 int remap_pfn_range (struct vm_area_struct*,scalar_t__,scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static int mmp_pcm_mmap(struct snd_pcm_substream *substream,
    struct vm_area_struct *vma)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 unsigned long off = vma->vm_pgoff;

 vma->vm_page_prot = pgprot_noncached(vma->vm_page_prot);
 return remap_pfn_range(vma, vma->vm_start,
  __phys_to_pfn(runtime->dma_addr) + off,
  vma->vm_end - vma->vm_start, vma->vm_page_prot);
}
