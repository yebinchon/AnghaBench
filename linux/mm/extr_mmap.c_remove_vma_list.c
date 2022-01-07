
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; } ;
struct mm_struct {int dummy; } ;


 int VM_ACCOUNT ;
 struct vm_area_struct* remove_vma (struct vm_area_struct*) ;
 int update_hiwater_vm (struct mm_struct*) ;
 int validate_mm (struct mm_struct*) ;
 int vm_stat_account (struct mm_struct*,int,long) ;
 int vm_unacct_memory (unsigned long) ;
 long vma_pages (struct vm_area_struct*) ;

__attribute__((used)) static void remove_vma_list(struct mm_struct *mm, struct vm_area_struct *vma)
{
 unsigned long nr_accounted = 0;


 update_hiwater_vm(mm);
 do {
  long nrpages = vma_pages(vma);

  if (vma->vm_flags & VM_ACCOUNT)
   nr_accounted += nrpages;
  vm_stat_account(mm, vma->vm_flags, -nrpages);
  vma = remove_vma(vma);
 } while (vma);
 vm_unacct_memory(nr_accounted);
 validate_mm(mm);
}
