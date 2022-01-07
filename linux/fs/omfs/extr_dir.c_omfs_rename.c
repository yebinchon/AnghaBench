
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_ctime; } ;
struct dentry {int dummy; } ;


 int EINVAL ;
 unsigned int RENAME_NOREPLACE ;
 int current_time (struct inode*) ;
 struct inode* d_inode (struct dentry*) ;
 int mark_inode_dirty (struct inode*) ;
 int omfs_add_link (struct dentry*,struct inode*) ;
 int omfs_delete_entry (struct dentry*) ;
 int omfs_remove (struct inode*,struct dentry*) ;

__attribute__((used)) static int omfs_rename(struct inode *old_dir, struct dentry *old_dentry,
         struct inode *new_dir, struct dentry *new_dentry,
         unsigned int flags)
{
 struct inode *new_inode = d_inode(new_dentry);
 struct inode *old_inode = d_inode(old_dentry);
 int err;

 if (flags & ~RENAME_NOREPLACE)
  return -EINVAL;

 if (new_inode) {

  err = omfs_remove(new_dir, new_dentry);
  if (err)
   goto out;
 }



 err = omfs_delete_entry(old_dentry);
 if (err)
  goto out;

 mark_inode_dirty(old_dir);
 err = omfs_add_link(new_dentry, old_inode);
 if (err)
  goto out;

 old_inode->i_ctime = current_time(old_inode);
 mark_inode_dirty(old_inode);
out:
 return err;
}
