
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;
typedef int handle_t ;


 int d_instantiate_new (struct dentry*,struct inode*) ;
 int drop_nlink (struct inode*) ;
 int ext4_add_entry (int *,struct dentry*,struct inode*) ;
 int ext4_mark_inode_dirty (int *,struct inode*) ;
 int iput (struct inode*) ;
 int unlock_new_inode (struct inode*) ;

__attribute__((used)) static int ext4_add_nondir(handle_t *handle,
  struct dentry *dentry, struct inode *inode)
{
 int err = ext4_add_entry(handle, dentry, inode);
 if (!err) {
  ext4_mark_inode_dirty(handle, inode);
  d_instantiate_new(dentry, inode);
  return 0;
 }
 drop_nlink(inode);
 unlock_new_inode(inode);
 iput(inode);
 return err;
}
