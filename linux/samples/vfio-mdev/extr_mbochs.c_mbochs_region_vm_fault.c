
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_fault_t ;
struct vm_fault {scalar_t__ address; int page; struct vm_area_struct* vma; } ;
struct vm_area_struct {scalar_t__ vm_start; struct mdev_state* vm_private_data; } ;
struct mdev_state {scalar_t__ pagecount; } ;
typedef scalar_t__ pgoff_t ;


 scalar_t__ PAGE_SHIFT ;
 int VM_FAULT_SIGBUS ;
 int mbochs_get_page (struct mdev_state*,scalar_t__) ;

__attribute__((used)) static vm_fault_t mbochs_region_vm_fault(struct vm_fault *vmf)
{
 struct vm_area_struct *vma = vmf->vma;
 struct mdev_state *mdev_state = vma->vm_private_data;
 pgoff_t page_offset = (vmf->address - vma->vm_start) >> PAGE_SHIFT;

 if (page_offset >= mdev_state->pagecount)
  return VM_FAULT_SIGBUS;

 vmf->page = mbochs_get_page(mdev_state, page_offset);
 if (!vmf->page)
  return VM_FAULT_SIGBUS;

 return 0;
}
