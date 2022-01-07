
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_mm; } ;


 int ENOMEM ;


 unsigned long VM_HUGEPAGE ;
 unsigned long VM_NOHUGEPAGE ;
 unsigned long VM_NO_KHUGEPAGED ;
 int khugepaged_enter_vma_merge (struct vm_area_struct*,unsigned long) ;
 int mm_has_pgste (int ) ;

int hugepage_madvise(struct vm_area_struct *vma,
       unsigned long *vm_flags, int advice)
{
 switch (advice) {
 case 129:
  *vm_flags &= ~VM_NOHUGEPAGE;
  *vm_flags |= VM_HUGEPAGE;





  if (!(*vm_flags & VM_NO_KHUGEPAGED) &&
    khugepaged_enter_vma_merge(vma, *vm_flags))
   return -ENOMEM;
  break;
 case 128:
  *vm_flags &= ~VM_HUGEPAGE;
  *vm_flags |= VM_NOHUGEPAGE;





  break;
 }

 return 0;
}
