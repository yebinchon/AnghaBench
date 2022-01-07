
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {TYPE_1__* vm_file; } ;
struct rb_node {int dummy; } ;
struct mm_struct {int map_count; } ;
struct address_space {int dummy; } ;
struct TYPE_2__ {struct address_space* f_mapping; } ;


 int __vma_link (struct mm_struct*,struct vm_area_struct*,struct vm_area_struct*,struct rb_node**,struct rb_node*) ;
 int __vma_link_file (struct vm_area_struct*) ;
 int i_mmap_lock_write (struct address_space*) ;
 int i_mmap_unlock_write (struct address_space*) ;
 int validate_mm (struct mm_struct*) ;

__attribute__((used)) static void vma_link(struct mm_struct *mm, struct vm_area_struct *vma,
   struct vm_area_struct *prev, struct rb_node **rb_link,
   struct rb_node *rb_parent)
{
 struct address_space *mapping = ((void*)0);

 if (vma->vm_file) {
  mapping = vma->vm_file->f_mapping;
  i_mmap_lock_write(mapping);
 }

 __vma_link(mm, vma, prev, rb_link, rb_parent);
 __vma_link_file(vma);

 if (mapping)
  i_mmap_unlock_write(mapping);

 mm->map_count++;
 validate_mm(mm);
}
