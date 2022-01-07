
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int * vm_ops; } ;
struct TYPE_2__ {int mnt; } ;
struct file {TYPE_1__ f_path; } ;


 int file_inode (struct file*) ;
 int mlog_errno (int) ;
 int ocfs2_file_vm_ops ;
 int ocfs2_inode_lock_atime (int ,int ,int*,int) ;
 int ocfs2_inode_unlock (int ,int) ;

int ocfs2_mmap(struct file *file, struct vm_area_struct *vma)
{
 int ret = 0, lock_level = 0;

 ret = ocfs2_inode_lock_atime(file_inode(file),
        file->f_path.mnt, &lock_level, 1);
 if (ret < 0) {
  mlog_errno(ret);
  goto out;
 }
 ocfs2_inode_unlock(file_inode(file), lock_level);
out:
 vma->vm_ops = &ocfs2_file_vm_ops;
 return 0;
}
