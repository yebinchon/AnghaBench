
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct inode {int i_sb; } ;
struct dentry {int dummy; } ;


 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int iput (struct inode*) ;
 int omfs_add_link (struct dentry*,struct inode*) ;
 int omfs_make_empty (struct inode*,int ) ;
 struct inode* omfs_new_inode (struct inode*,int ) ;

__attribute__((used)) static int omfs_add_node(struct inode *dir, struct dentry *dentry, umode_t mode)
{
 int err;
 struct inode *inode = omfs_new_inode(dir, mode);

 if (IS_ERR(inode))
  return PTR_ERR(inode);

 err = omfs_make_empty(inode, dir->i_sb);
 if (err)
  goto out_free_inode;

 err = omfs_add_link(dentry, inode);
 if (err)
  goto out_free_inode;

 d_instantiate(dentry, inode);
 return 0;

out_free_inode:
 iput(inode);
 return err;
}
