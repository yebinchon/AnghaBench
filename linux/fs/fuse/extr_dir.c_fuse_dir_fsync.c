
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct fuse_conn {int no_fsyncdir; } ;
struct file {TYPE_1__* f_mapping; } ;
typedef int loff_t ;
struct TYPE_2__ {struct inode* host; } ;


 int EIO ;
 int ENOSYS ;
 int FUSE_FSYNCDIR ;
 int fuse_fsync_common (struct file*,int ,int ,int,int ) ;
 struct fuse_conn* get_fuse_conn (struct inode*) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 scalar_t__ is_bad_inode (struct inode*) ;

__attribute__((used)) static int fuse_dir_fsync(struct file *file, loff_t start, loff_t end,
     int datasync)
{
 struct inode *inode = file->f_mapping->host;
 struct fuse_conn *fc = get_fuse_conn(inode);
 int err;

 if (is_bad_inode(inode))
  return -EIO;

 if (fc->no_fsyncdir)
  return 0;

 inode_lock(inode);
 err = fuse_fsync_common(file, start, end, datasync, FUSE_FSYNCDIR);
 if (err == -ENOSYS) {
  fc->no_fsyncdir = 1;
  err = 0;
 }
 inode_unlock(inode);

 return err;
}
