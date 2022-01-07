
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_rb; } ;


 int vma_gap_callbacks_propagate (int *,int *) ;

__attribute__((used)) static void vma_gap_update(struct vm_area_struct *vma)
{




 vma_gap_callbacks_propagate(&vma->vm_rb, ((void*)0));
}
