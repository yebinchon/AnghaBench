
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {struct file* vm_file; } ;
struct file {struct address_space* f_mapping; } ;
struct address_space {int dummy; } ;


 int __remove_shared_vm_struct (struct vm_area_struct*,struct file*,struct address_space*) ;
 int i_mmap_lock_write (struct address_space*) ;
 int i_mmap_unlock_write (struct address_space*) ;

void unlink_file_vma(struct vm_area_struct *vma)
{
 struct file *file = vma->vm_file;

 if (file) {
  struct address_space *mapping = file->f_mapping;
  i_mmap_lock_write(mapping);
  __remove_shared_vm_struct(vma, file, mapping);
  i_mmap_unlock_write(mapping);
 }
}
