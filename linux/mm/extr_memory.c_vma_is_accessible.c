
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; } ;


 int VM_EXEC ;
 int VM_READ ;
 int VM_WRITE ;

__attribute__((used)) static inline bool vma_is_accessible(struct vm_area_struct *vma)
{
 return vma->vm_flags & (VM_READ | VM_EXEC | VM_WRITE);
}
