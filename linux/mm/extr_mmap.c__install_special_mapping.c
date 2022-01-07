
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_special_mapping {int dummy; } ;
struct vm_area_struct {int dummy; } ;
struct mm_struct {int dummy; } ;


 struct vm_area_struct* __install_special_mapping (struct mm_struct*,unsigned long,unsigned long,unsigned long,void*,int *) ;
 int special_mapping_vmops ;

struct vm_area_struct *_install_special_mapping(
 struct mm_struct *mm,
 unsigned long addr, unsigned long len,
 unsigned long vm_flags, const struct vm_special_mapping *spec)
{
 return __install_special_mapping(mm, addr, len, vm_flags, (void *)spec,
     &special_mapping_vmops);
}
