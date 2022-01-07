
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {scalar_t__ vm_end; scalar_t__ vm_start; scalar_t__ vm_file; int vm_flags; scalar_t__ vm_pgoff; } ;


 int PAGE_SHIFT ;
 int VM_EXEC ;
 int VM_READ ;
 int VM_SOFTDIRTY ;
 int VM_WRITE ;
 scalar_t__ mpol_equal (int ,int ) ;
 int vma_policy (struct vm_area_struct*) ;

__attribute__((used)) static int anon_vma_compatible(struct vm_area_struct *a, struct vm_area_struct *b)
{
 return a->vm_end == b->vm_start &&
  mpol_equal(vma_policy(a), vma_policy(b)) &&
  a->vm_file == b->vm_file &&
  !((a->vm_flags ^ b->vm_flags) & ~(VM_READ|VM_WRITE|VM_EXEC|VM_SOFTDIRTY)) &&
  b->vm_pgoff == a->vm_pgoff + ((b->vm_start - a->vm_start) >> PAGE_SHIFT);
}
