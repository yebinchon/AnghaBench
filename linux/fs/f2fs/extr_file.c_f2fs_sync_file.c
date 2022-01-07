
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int loff_t ;


 int EIO ;
 int F2FS_I_SB (int ) ;
 int f2fs_cp_error (int ) ;
 int f2fs_do_sync_file (struct file*,int ,int ,int,int) ;
 int file_inode (struct file*) ;
 scalar_t__ unlikely (int ) ;

int f2fs_sync_file(struct file *file, loff_t start, loff_t end, int datasync)
{
 if (unlikely(f2fs_cp_error(F2FS_I_SB(file_inode(file)))))
  return -EIO;
 return f2fs_do_sync_file(file, start, end, datasync, 0);
}
