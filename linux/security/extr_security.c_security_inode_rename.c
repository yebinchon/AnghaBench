
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 scalar_t__ IS_PRIVATE (int ) ;
 unsigned int RENAME_EXCHANGE ;
 int call_int_hook (int ,int ,struct inode*,struct dentry*,struct inode*,struct dentry*) ;
 int d_backing_inode (struct dentry*) ;
 scalar_t__ d_is_positive (struct dentry*) ;
 int inode_rename ;
 scalar_t__ unlikely (int) ;

int security_inode_rename(struct inode *old_dir, struct dentry *old_dentry,
      struct inode *new_dir, struct dentry *new_dentry,
      unsigned int flags)
{
        if (unlikely(IS_PRIVATE(d_backing_inode(old_dentry)) ||
            (d_is_positive(new_dentry) && IS_PRIVATE(d_backing_inode(new_dentry)))))
  return 0;

 if (flags & RENAME_EXCHANGE) {
  int err = call_int_hook(inode_rename, 0, new_dir, new_dentry,
           old_dir, old_dentry);
  if (err)
   return err;
 }

 return call_int_hook(inode_rename, 0, old_dir, old_dentry,
        new_dir, new_dentry);
}
