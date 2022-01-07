
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;
struct mm_struct {int dummy; } ;


 int PTR_ERR_OR_ZERO (struct vm_area_struct*) ;
 struct vm_area_struct* __install_special_mapping (struct mm_struct*,unsigned long,unsigned long,unsigned long,void*,int *) ;
 int legacy_special_mapping_vmops ;

int install_special_mapping(struct mm_struct *mm,
       unsigned long addr, unsigned long len,
       unsigned long vm_flags, struct page **pages)
{
 struct vm_area_struct *vma = __install_special_mapping(
  mm, addr, len, vm_flags, (void *)pages,
  &legacy_special_mapping_vmops);

 return PTR_ERR_OR_ZERO(vma);
}
