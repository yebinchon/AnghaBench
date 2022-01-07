
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {scalar_t__ rb_subtree_gap; int vm_rb; struct vm_area_struct* vm_next; } ;
struct rb_node {int dummy; } ;
struct mm_struct {int mm_rb; int highest_vm_end; } ;


 int rb_link_node (int *,struct rb_node*,struct rb_node**) ;
 int vm_end_gap (struct vm_area_struct*) ;
 int vma_gap_update (struct vm_area_struct*) ;
 int vma_rb_insert (struct vm_area_struct*,int *) ;

void __vma_link_rb(struct mm_struct *mm, struct vm_area_struct *vma,
  struct rb_node **rb_link, struct rb_node *rb_parent)
{

 if (vma->vm_next)
  vma_gap_update(vma->vm_next);
 else
  mm->highest_vm_end = vm_end_gap(vma);
 rb_link_node(&vma->vm_rb, rb_parent, rb_link);
 vma->rb_subtree_gap = 0;
 vma_gap_update(vma);
 vma_rb_insert(vma, &mm->mm_rb);
}
