
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_special_mapping {int (* mremap ) (struct vm_special_mapping*,struct vm_area_struct*) ;} ;
struct vm_area_struct {scalar_t__ vm_mm; struct vm_special_mapping* vm_private_data; } ;
struct TYPE_2__ {scalar_t__ mm; } ;


 int EFAULT ;
 scalar_t__ WARN_ON_ONCE (int) ;
 TYPE_1__* current ;
 int stub1 (struct vm_special_mapping*,struct vm_area_struct*) ;

__attribute__((used)) static int special_mapping_mremap(struct vm_area_struct *new_vma)
{
 struct vm_special_mapping *sm = new_vma->vm_private_data;

 if (WARN_ON_ONCE(current->mm != new_vma->vm_mm))
  return -EFAULT;

 if (sm->mremap)
  return sm->mremap(sm, new_vma);

 return 0;
}
