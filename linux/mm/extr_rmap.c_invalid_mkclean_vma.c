
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; } ;


 int VM_SHARED ;

__attribute__((used)) static bool invalid_mkclean_vma(struct vm_area_struct *vma, void *arg)
{
 if (vma->vm_flags & VM_SHARED)
  return 0;

 return 1;
}
