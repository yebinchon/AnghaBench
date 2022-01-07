
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int * vm_ops; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EIO ;
 int F2FS_I_SB (struct inode*) ;
 int f2fs_convert_inline_inode (struct inode*) ;
 int f2fs_cp_error (int ) ;
 int f2fs_file_vm_ops ;
 int file_accessed (struct file*) ;
 struct inode* file_inode (struct file*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int f2fs_file_mmap(struct file *file, struct vm_area_struct *vma)
{
 struct inode *inode = file_inode(file);
 int err;

 if (unlikely(f2fs_cp_error(F2FS_I_SB(inode))))
  return -EIO;


 err = f2fs_convert_inline_inode(inode);
 if (err)
  return err;

 file_accessed(file);
 vma->vm_ops = &f2fs_file_vm_ops;
 return 0;
}
