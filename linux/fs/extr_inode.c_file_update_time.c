
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec64 {int dummy; } ;
struct inode {int i_ctime; int i_mtime; } ;
struct file {int dummy; } ;


 scalar_t__ IS_I_VERSION (struct inode*) ;
 scalar_t__ IS_NOCMTIME (struct inode*) ;
 int S_CTIME ;
 int S_MTIME ;
 int S_VERSION ;
 int __mnt_drop_write_file (struct file*) ;
 scalar_t__ __mnt_want_write_file (struct file*) ;
 struct timespec64 current_time (struct inode*) ;
 struct inode* file_inode (struct file*) ;
 scalar_t__ inode_iversion_need_inc (struct inode*) ;
 int timespec64_equal (int *,struct timespec64*) ;
 int update_time (struct inode*,struct timespec64*,int) ;

int file_update_time(struct file *file)
{
 struct inode *inode = file_inode(file);
 struct timespec64 now;
 int sync_it = 0;
 int ret;


 if (IS_NOCMTIME(inode))
  return 0;

 now = current_time(inode);
 if (!timespec64_equal(&inode->i_mtime, &now))
  sync_it = S_MTIME;

 if (!timespec64_equal(&inode->i_ctime, &now))
  sync_it |= S_CTIME;

 if (IS_I_VERSION(inode) && inode_iversion_need_inc(inode))
  sync_it |= S_VERSION;

 if (!sync_it)
  return 0;


 if (__mnt_want_write_file(file))
  return 0;

 ret = update_time(inode, &now, sync_it);
 __mnt_drop_write_file(file);

 return ret;
}
