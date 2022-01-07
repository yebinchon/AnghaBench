
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_rb; } ;
struct rb_root {int dummy; } ;


 int rb_insert_augmented (int *,struct rb_root*,int *) ;
 int validate_mm_rb (struct rb_root*,int *) ;
 int vma_gap_callbacks ;

__attribute__((used)) static inline void vma_rb_insert(struct vm_area_struct *vma,
     struct rb_root *root)
{

 validate_mm_rb(root, ((void*)0));

 rb_insert_augmented(&vma->vm_rb, root, &vma_gap_callbacks);
}
