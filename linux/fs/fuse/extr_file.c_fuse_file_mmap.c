
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; int * vm_ops; } ;
struct fuse_file {int open_flags; } ;
struct file {int f_mapping; struct fuse_file* private_data; } ;


 int ENODEV ;
 int FOPEN_DIRECT_IO ;
 int VM_MAYSHARE ;
 int VM_MAYWRITE ;
 int VM_SHARED ;
 int file_accessed (struct file*) ;
 int fuse_file_vm_ops ;
 int fuse_link_write_file (struct file*) ;
 int generic_file_mmap (struct file*,struct vm_area_struct*) ;
 int invalidate_inode_pages2 (int ) ;

__attribute__((used)) static int fuse_file_mmap(struct file *file, struct vm_area_struct *vma)
{
 struct fuse_file *ff = file->private_data;

 if (ff->open_flags & FOPEN_DIRECT_IO) {

  if (vma->vm_flags & VM_MAYSHARE)
   return -ENODEV;

  invalidate_inode_pages2(file->f_mapping);

  return generic_file_mmap(file, vma);
 }

 if ((vma->vm_flags & VM_SHARED) && (vma->vm_flags & VM_MAYWRITE))
  fuse_link_write_file(file);

 file_accessed(file);
 vma->vm_ops = &fuse_file_vm_ops;
 return 0;
}
