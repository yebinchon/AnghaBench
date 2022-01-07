
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_special_mapping {char const* name; } ;
struct vm_area_struct {scalar_t__ vm_private_data; } ;



__attribute__((used)) static const char *special_mapping_name(struct vm_area_struct *vma)
{
 return ((struct vm_special_mapping *)vma->vm_private_data)->name;
}
