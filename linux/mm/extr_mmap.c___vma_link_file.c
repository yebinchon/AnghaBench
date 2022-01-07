
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int vm_flags; struct file* vm_file; } ;
struct file {struct address_space* f_mapping; } ;
struct address_space {int i_mmap; int i_mmap_writable; } ;
struct TYPE_2__ {int i_writecount; } ;


 int VM_DENYWRITE ;
 int VM_SHARED ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 TYPE_1__* file_inode (struct file*) ;
 int flush_dcache_mmap_lock (struct address_space*) ;
 int flush_dcache_mmap_unlock (struct address_space*) ;
 int vma_interval_tree_insert (struct vm_area_struct*,int *) ;

__attribute__((used)) static void __vma_link_file(struct vm_area_struct *vma)
{
 struct file *file;

 file = vma->vm_file;
 if (file) {
  struct address_space *mapping = file->f_mapping;

  if (vma->vm_flags & VM_DENYWRITE)
   atomic_dec(&file_inode(file)->i_writecount);
  if (vma->vm_flags & VM_SHARED)
   atomic_inc(&mapping->i_mmap_writable);

  flush_dcache_mmap_lock(mapping);
  vma_interval_tree_insert(vma, &mapping->i_mmap);
  flush_dcache_mmap_unlock(mapping);
 }
}
