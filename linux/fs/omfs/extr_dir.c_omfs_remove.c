
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; } ;
struct dentry {int dummy; } ;


 int ENOTEMPTY ;
 scalar_t__ S_ISDIR (int ) ;
 int clear_nlink (struct inode*) ;
 struct inode* d_inode (struct dentry*) ;
 int mark_inode_dirty (struct inode*) ;
 int omfs_delete_entry (struct dentry*) ;
 int omfs_dir_is_empty (struct inode*) ;

__attribute__((used)) static int omfs_remove(struct inode *dir, struct dentry *dentry)
{
 struct inode *inode = d_inode(dentry);
 int ret;


 if (S_ISDIR(inode->i_mode) &&
     !omfs_dir_is_empty(inode))
  return -ENOTEMPTY;

 ret = omfs_delete_entry(dentry);
 if (ret)
  return ret;

 clear_nlink(inode);
 mark_inode_dirty(inode);
 mark_inode_dirty(dir);
 return 0;
}
