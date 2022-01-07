
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; } ;
typedef int pfn_t ;


 int VM_MIXEDMAP ;
 scalar_t__ is_zero_pfn (int ) ;
 scalar_t__ pfn_t_devmap (int ) ;
 scalar_t__ pfn_t_special (int ) ;
 int pfn_t_to_pfn (int ) ;

__attribute__((used)) static bool vm_mixed_ok(struct vm_area_struct *vma, pfn_t pfn)
{

 if (vma->vm_flags & VM_MIXEDMAP)
  return 1;
 if (pfn_t_devmap(pfn))
  return 1;
 if (pfn_t_special(pfn))
  return 1;
 if (is_zero_pfn(pfn_t_to_pfn(pfn)))
  return 1;
 return 0;
}
