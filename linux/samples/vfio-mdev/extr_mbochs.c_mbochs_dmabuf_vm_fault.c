
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_fault_t ;
struct vm_fault {size_t pgoff; int page; struct vm_area_struct* vma; } ;
struct vm_area_struct {struct mbochs_dmabuf* vm_private_data; } ;
struct mbochs_dmabuf {size_t pagecount; int * pages; } ;


 int VM_FAULT_SIGBUS ;
 scalar_t__ WARN_ON (int) ;
 int get_page (int ) ;

__attribute__((used)) static vm_fault_t mbochs_dmabuf_vm_fault(struct vm_fault *vmf)
{
 struct vm_area_struct *vma = vmf->vma;
 struct mbochs_dmabuf *dmabuf = vma->vm_private_data;

 if (WARN_ON(vmf->pgoff >= dmabuf->pagecount))
  return VM_FAULT_SIGBUS;

 vmf->page = dmabuf->pages[vmf->pgoff];
 get_page(vmf->page);
 return 0;
}
