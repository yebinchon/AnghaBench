
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_fault_t ;
struct vm_fault {unsigned long pgoff; struct page* page; TYPE_2__* vma; } ;
struct snd_pcm_substream {TYPE_1__* ops; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dma_bytes; } ;
struct page {int dummy; } ;
struct TYPE_4__ {struct snd_pcm_substream* vm_private_data; } ;
struct TYPE_3__ {struct page* (* page ) (struct snd_pcm_substream*,unsigned long) ;} ;


 size_t PAGE_ALIGN (int ) ;
 unsigned long PAGE_SHIFT ;
 size_t PAGE_SIZE ;
 int VM_FAULT_SIGBUS ;
 int get_page (struct page*) ;
 struct page* snd_pcm_default_page_ops (struct snd_pcm_substream*,unsigned long) ;
 struct page* stub1 (struct snd_pcm_substream*,unsigned long) ;

__attribute__((used)) static vm_fault_t snd_pcm_mmap_data_fault(struct vm_fault *vmf)
{
 struct snd_pcm_substream *substream = vmf->vma->vm_private_data;
 struct snd_pcm_runtime *runtime;
 unsigned long offset;
 struct page * page;
 size_t dma_bytes;

 if (substream == ((void*)0))
  return VM_FAULT_SIGBUS;
 runtime = substream->runtime;
 offset = vmf->pgoff << PAGE_SHIFT;
 dma_bytes = PAGE_ALIGN(runtime->dma_bytes);
 if (offset > dma_bytes - PAGE_SIZE)
  return VM_FAULT_SIGBUS;
 if (substream->ops->page)
  page = substream->ops->page(substream, offset);
 else
  page = snd_pcm_default_page_ops(substream, offset);
 if (!page)
  return VM_FAULT_SIGBUS;
 get_page(page);
 vmf->page = page;
 return 0;
}
