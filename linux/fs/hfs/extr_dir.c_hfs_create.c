
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct inode {int i_ino; } ;
struct dentry {int d_name; } ;


 int ENOMEM ;
 int clear_nlink (struct inode*) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int hfs_cat_create (int ,struct inode*,int *,struct inode*) ;
 int hfs_delete_inode (struct inode*) ;
 struct inode* hfs_new_inode (struct inode*,int *,int ) ;
 int iput (struct inode*) ;
 int mark_inode_dirty (struct inode*) ;

__attribute__((used)) static int hfs_create(struct inode *dir, struct dentry *dentry, umode_t mode,
        bool excl)
{
 struct inode *inode;
 int res;

 inode = hfs_new_inode(dir, &dentry->d_name, mode);
 if (!inode)
  return -ENOMEM;

 res = hfs_cat_create(inode->i_ino, dir, &dentry->d_name, inode);
 if (res) {
  clear_nlink(inode);
  hfs_delete_inode(inode);
  iput(inode);
  return res;
 }
 d_instantiate(dentry, inode);
 mark_inode_dirty(inode);
 return 0;
}
