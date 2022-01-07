
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_ctime; int i_mtime; } ;
struct dentry {int dummy; } ;


 int EINVAL ;
 int ENOTEMPTY ;
 unsigned int RENAME_NOREPLACE ;
 int current_time (struct inode*) ;
 struct inode* d_inode (struct dentry*) ;
 int d_is_dir (struct dentry*) ;
 scalar_t__ d_really_is_positive (struct dentry*) ;
 int drop_nlink (struct inode*) ;
 int inc_nlink (struct inode*) ;
 int simple_empty (struct dentry*) ;
 int simple_unlink (struct inode*,struct dentry*) ;

int simple_rename(struct inode *old_dir, struct dentry *old_dentry,
    struct inode *new_dir, struct dentry *new_dentry,
    unsigned int flags)
{
 struct inode *inode = d_inode(old_dentry);
 int they_are_dirs = d_is_dir(old_dentry);

 if (flags & ~RENAME_NOREPLACE)
  return -EINVAL;

 if (!simple_empty(new_dentry))
  return -ENOTEMPTY;

 if (d_really_is_positive(new_dentry)) {
  simple_unlink(new_dir, new_dentry);
  if (they_are_dirs) {
   drop_nlink(d_inode(new_dentry));
   drop_nlink(old_dir);
  }
 } else if (they_are_dirs) {
  drop_nlink(old_dir);
  inc_nlink(new_dir);
 }

 old_dir->i_ctime = old_dir->i_mtime = new_dir->i_ctime =
  new_dir->i_mtime = inode->i_ctime = current_time(old_dir);

 return 0;
}
