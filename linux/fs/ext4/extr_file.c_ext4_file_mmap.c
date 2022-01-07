
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int * vm_ops; int vm_flags; } ;
struct inode {int i_sb; } ;
struct file {TYPE_1__* f_mapping; } ;
struct ext4_sb_info {struct dax_device* s_daxdev; } ;
struct dax_device {int dummy; } ;
struct TYPE_2__ {struct inode* host; } ;


 int EIO ;
 int EOPNOTSUPP ;
 struct ext4_sb_info* EXT4_SB (int ) ;
 scalar_t__ IS_DAX (int ) ;
 int VM_HUGEPAGE ;
 int daxdev_mapping_supported (struct vm_area_struct*,struct dax_device*) ;
 int ext4_dax_vm_ops ;
 int ext4_file_vm_ops ;
 int ext4_forced_shutdown (struct ext4_sb_info*) ;
 int file_accessed (struct file*) ;
 int file_inode (struct file*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int ext4_file_mmap(struct file *file, struct vm_area_struct *vma)
{
 struct inode *inode = file->f_mapping->host;
 struct ext4_sb_info *sbi = EXT4_SB(inode->i_sb);
 struct dax_device *dax_dev = sbi->s_daxdev;

 if (unlikely(ext4_forced_shutdown(sbi)))
  return -EIO;





 if (!daxdev_mapping_supported(vma, dax_dev))
  return -EOPNOTSUPP;

 file_accessed(file);
 if (IS_DAX(file_inode(file))) {
  vma->vm_ops = &ext4_dax_vm_ops;
  vma->vm_flags |= VM_HUGEPAGE;
 } else {
  vma->vm_ops = &ext4_file_vm_ops;
 }
 return 0;
}
