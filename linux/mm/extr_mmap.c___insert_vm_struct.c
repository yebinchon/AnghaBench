
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_end; int vm_start; } ;
struct rb_node {int dummy; } ;
struct mm_struct {int map_count; } ;


 int BUG () ;
 int __vma_link (struct mm_struct*,struct vm_area_struct*,struct vm_area_struct*,struct rb_node**,struct rb_node*) ;
 scalar_t__ find_vma_links (struct mm_struct*,int ,int ,struct vm_area_struct**,struct rb_node***,struct rb_node**) ;

__attribute__((used)) static void __insert_vm_struct(struct mm_struct *mm, struct vm_area_struct *vma)
{
 struct vm_area_struct *prev;
 struct rb_node **rb_link, *rb_parent;

 if (find_vma_links(mm, vma->vm_start, vma->vm_end,
      &prev, &rb_link, &rb_parent))
  BUG();
 __vma_link(mm, vma, prev, rb_link, rb_parent);
 mm->map_count++;
}
