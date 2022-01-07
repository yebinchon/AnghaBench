
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; } ;


 int HPAGE_RESV_OWNER ;
 int VM_MAYSHARE ;
 int VM_NORESERVE ;
 scalar_t__ is_vma_resv_set (struct vm_area_struct*,int ) ;

__attribute__((used)) static bool vma_has_reserves(struct vm_area_struct *vma, long chg)
{
 if (vma->vm_flags & VM_NORESERVE) {
  if (vma->vm_flags & VM_MAYSHARE && chg == 0)
   return 1;
  else
   return 0;
 }


 if (vma->vm_flags & VM_MAYSHARE) {







  if (chg)
   return 0;
  else
   return 1;
 }





 if (is_vma_resv_set(vma, HPAGE_RESV_OWNER)) {
  if (chg)
   return 0;
  else
   return 1;
 }

 return 0;
}
