
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; } ;


 int VM_HUGETLB ;
 int VM_LOCKED ;
 int VM_PFNMAP ;

__attribute__((used)) static inline bool can_madv_lru_vma(struct vm_area_struct *vma)
{
 return !(vma->vm_flags & (VM_LOCKED|VM_HUGETLB|VM_PFNMAP));
}
