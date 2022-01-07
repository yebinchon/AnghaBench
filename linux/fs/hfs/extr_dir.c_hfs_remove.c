
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_size; int i_ctime; int i_ino; int i_mode; } ;
struct dentry {int d_name; } ;


 int ENOTEMPTY ;
 scalar_t__ S_ISDIR (int ) ;
 int clear_nlink (struct inode*) ;
 int current_time (struct inode*) ;
 struct inode* d_inode (struct dentry*) ;
 int hfs_cat_delete (int ,struct inode*,int *) ;
 int hfs_delete_inode (struct inode*) ;
 int mark_inode_dirty (struct inode*) ;

__attribute__((used)) static int hfs_remove(struct inode *dir, struct dentry *dentry)
{
 struct inode *inode = d_inode(dentry);
 int res;

 if (S_ISDIR(inode->i_mode) && inode->i_size != 2)
  return -ENOTEMPTY;
 res = hfs_cat_delete(inode->i_ino, dir, &dentry->d_name);
 if (res)
  return res;
 clear_nlink(inode);
 inode->i_ctime = current_time(inode);
 hfs_delete_inode(inode);
 mark_inode_dirty(inode);
 return 0;
}
