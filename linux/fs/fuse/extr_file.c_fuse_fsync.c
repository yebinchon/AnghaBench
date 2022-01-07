
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct fuse_conn {int no_fsync; } ;
struct file {TYPE_1__* f_mapping; } ;
typedef int loff_t ;
struct TYPE_2__ {struct inode* host; } ;


 int EIO ;
 int ENOSYS ;
 int FUSE_FSYNC ;
 int file_check_and_advance_wb_err (struct file*) ;
 int file_write_and_wait_range (struct file*,int ,int ) ;
 int fuse_fsync_common (struct file*,int ,int ,int,int ) ;
 int fuse_sync_writes (struct inode*) ;
 struct fuse_conn* get_fuse_conn (struct inode*) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 scalar_t__ is_bad_inode (struct inode*) ;
 int sync_inode_metadata (struct inode*,int) ;

__attribute__((used)) static int fuse_fsync(struct file *file, loff_t start, loff_t end,
        int datasync)
{
 struct inode *inode = file->f_mapping->host;
 struct fuse_conn *fc = get_fuse_conn(inode);
 int err;

 if (is_bad_inode(inode))
  return -EIO;

 inode_lock(inode);






 err = file_write_and_wait_range(file, start, end);
 if (err)
  goto out;

 fuse_sync_writes(inode);






 err = file_check_and_advance_wb_err(file);
 if (err)
  goto out;

 err = sync_inode_metadata(inode, 1);
 if (err)
  goto out;

 if (fc->no_fsync)
  goto out;

 err = fuse_fsync_common(file, start, end, datasync, FUSE_FSYNC);
 if (err == -ENOSYS) {
  fc->no_fsync = 1;
  err = 0;
 }
out:
 inode_unlock(inode);

 return err;
}
