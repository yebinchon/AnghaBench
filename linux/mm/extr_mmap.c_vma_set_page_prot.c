
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_flags; int vm_page_prot; } ;
typedef int pgprot_t ;


 unsigned long VM_SHARED ;
 int WRITE_ONCE (int ,int ) ;
 int vm_pgprot_modify (int ,unsigned long) ;
 scalar_t__ vma_wants_writenotify (struct vm_area_struct*,int ) ;

void vma_set_page_prot(struct vm_area_struct *vma)
{
 unsigned long vm_flags = vma->vm_flags;
 pgprot_t vm_page_prot;

 vm_page_prot = vm_pgprot_modify(vma->vm_page_prot, vm_flags);
 if (vma_wants_writenotify(vma, vm_page_prot)) {
  vm_flags &= ~VM_SHARED;
  vm_page_prot = vm_pgprot_modify(vm_page_prot, vm_flags);
 }

 WRITE_ONCE(vma->vm_page_prot, vm_page_prot);
}
