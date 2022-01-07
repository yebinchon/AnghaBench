
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_special_mapping {int dummy; } ;
struct vm_area_struct {int * vm_ops; struct vm_special_mapping const* vm_private_data; } ;


 int legacy_special_mapping_vmops ;
 int special_mapping_vmops ;

bool vma_is_special_mapping(const struct vm_area_struct *vma,
 const struct vm_special_mapping *sm)
{
 return vma->vm_private_data == sm &&
  (vma->vm_ops == &special_mapping_vmops ||
   vma->vm_ops == &legacy_special_mapping_vmops);
}
