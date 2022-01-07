
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; void* vm_private_data; } ;


 int VM_BUG_ON_VMA (int,struct vm_area_struct*) ;
 int VM_MAYSHARE ;
 int is_vm_hugetlb_page (struct vm_area_struct*) ;

void reset_vma_resv_huge_pages(struct vm_area_struct *vma)
{
 VM_BUG_ON_VMA(!is_vm_hugetlb_page(vma), vma);
 if (!(vma->vm_flags & VM_MAYSHARE))
  vma->vm_private_data = (void *)0;
}
