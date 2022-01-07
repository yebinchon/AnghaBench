
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;
typedef scalar_t__ loff_t ;


 int EAGAIN ;
 scalar_t__ LLONG_MAX ;
 struct inode* file_inode (struct file*) ;
 int file_write_and_wait_range (struct file*,scalar_t__,scalar_t__) ;
 int nfs_file_fsync_commit (struct file*,int) ;
 int pnfs_sync_inode (struct inode*,int) ;
 int trace_nfs_fsync_enter (struct inode*) ;
 int trace_nfs_fsync_exit (struct inode*,int) ;

int
nfs_file_fsync(struct file *file, loff_t start, loff_t end, int datasync)
{
 int ret;
 struct inode *inode = file_inode(file);

 trace_nfs_fsync_enter(inode);

 do {
  ret = file_write_and_wait_range(file, start, end);
  if (ret != 0)
   break;
  ret = nfs_file_fsync_commit(file, datasync);
  if (!ret)
   ret = pnfs_sync_inode(inode, !!datasync);





  start = 0;
  end = LLONG_MAX;
 } while (ret == -EAGAIN);

 trace_nfs_fsync_exit(inode, ret);
 return ret;
}
