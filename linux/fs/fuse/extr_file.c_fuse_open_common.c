
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct fuse_conn {scalar_t__ writeback_cache; scalar_t__ atomic_o_trunc; } ;
struct file {int f_flags; } ;


 int O_TRUNC ;
 int fuse_do_open (struct fuse_conn*,int ,struct file*,int) ;
 int fuse_finish_open (struct inode*,struct file*) ;
 int fuse_release_nowrite (struct inode*) ;
 int fuse_set_nowrite (struct inode*) ;
 int generic_file_open (struct inode*,struct file*) ;
 struct fuse_conn* get_fuse_conn (struct inode*) ;
 int get_node_id (struct inode*) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;

int fuse_open_common(struct inode *inode, struct file *file, bool isdir)
{
 struct fuse_conn *fc = get_fuse_conn(inode);
 int err;
 bool is_wb_truncate = (file->f_flags & O_TRUNC) &&
     fc->atomic_o_trunc &&
     fc->writeback_cache;

 err = generic_file_open(inode, file);
 if (err)
  return err;

 if (is_wb_truncate) {
  inode_lock(inode);
  fuse_set_nowrite(inode);
 }

 err = fuse_do_open(fc, get_node_id(inode), file, isdir);

 if (!err)
  fuse_finish_open(inode, file);

 if (is_wb_truncate) {
  fuse_release_nowrite(inode);
  inode_unlock(inode);
 }

 return err;
}
