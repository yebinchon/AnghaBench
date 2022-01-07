
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int vm_flags; } ;
struct file {int dummy; } ;
struct address_space {int i_mmap; } ;
struct TYPE_2__ {int i_writecount; } ;


 int VM_DENYWRITE ;
 int VM_SHARED ;
 int atomic_inc (int *) ;
 TYPE_1__* file_inode (struct file*) ;
 int flush_dcache_mmap_lock (struct address_space*) ;
 int flush_dcache_mmap_unlock (struct address_space*) ;
 int mapping_unmap_writable (struct address_space*) ;
 int vma_interval_tree_remove (struct vm_area_struct*,int *) ;

__attribute__((used)) static void __remove_shared_vm_struct(struct vm_area_struct *vma,
  struct file *file, struct address_space *mapping)
{
 if (vma->vm_flags & VM_DENYWRITE)
  atomic_inc(&file_inode(file)->i_writecount);
 if (vma->vm_flags & VM_SHARED)
  mapping_unmap_writable(mapping);

 flush_dcache_mmap_lock(mapping);
 vma_interval_tree_remove(vma, &mapping->i_mmap);
 flush_dcache_mmap_unlock(mapping);
}
