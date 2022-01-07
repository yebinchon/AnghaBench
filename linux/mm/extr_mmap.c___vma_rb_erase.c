
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_rb; } ;
struct rb_root {int dummy; } ;


 int rb_erase_augmented (int *,struct rb_root*,int *) ;
 int vma_gap_callbacks ;

__attribute__((used)) static void __vma_rb_erase(struct vm_area_struct *vma, struct rb_root *root)
{





 rb_erase_augmented(&vma->vm_rb, root, &vma_gap_callbacks);
}
