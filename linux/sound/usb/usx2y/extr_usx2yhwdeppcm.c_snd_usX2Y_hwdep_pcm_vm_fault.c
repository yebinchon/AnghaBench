
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_fault_t ;
struct vm_fault {unsigned long pgoff; int page; TYPE_1__* vma; } ;
struct usX2Ydev {scalar_t__ hwdep_pcm_shm; } ;
struct TYPE_2__ {scalar_t__ vm_private_data; } ;


 unsigned long PAGE_SHIFT ;
 int get_page (int ) ;
 int virt_to_page (void*) ;

__attribute__((used)) static vm_fault_t snd_usX2Y_hwdep_pcm_vm_fault(struct vm_fault *vmf)
{
 unsigned long offset;
 void *vaddr;

 offset = vmf->pgoff << PAGE_SHIFT;
 vaddr = (char *)((struct usX2Ydev *)vmf->vma->vm_private_data)->hwdep_pcm_shm + offset;
 vmf->page = virt_to_page(vaddr);
 get_page(vmf->page);
 return 0;
}
