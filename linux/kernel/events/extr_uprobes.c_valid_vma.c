
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_flags_t ;
struct vm_area_struct {int vm_flags; scalar_t__ vm_file; } ;


 int VM_HUGETLB ;
 int VM_MAYEXEC ;
 int VM_MAYSHARE ;
 int VM_WRITE ;

__attribute__((used)) static bool valid_vma(struct vm_area_struct *vma, bool is_register)
{
 vm_flags_t flags = VM_HUGETLB | VM_MAYEXEC | VM_MAYSHARE;

 if (is_register)
  flags |= VM_WRITE;

 return vma->vm_file && (vma->vm_flags & flags) == VM_MAYEXEC;
}
