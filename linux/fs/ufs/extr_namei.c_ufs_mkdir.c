
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct inode {TYPE_1__* i_mapping; int * i_fop; int * i_op; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int * a_ops; } ;


 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int S_IFDIR ;
 int d_instantiate_new (struct dentry*,struct inode*) ;
 int discard_new_inode (struct inode*) ;
 int inode_dec_link_count (struct inode*) ;
 int inode_inc_link_count (struct inode*) ;
 int ufs_add_link (struct dentry*,struct inode*) ;
 int ufs_aops ;
 int ufs_dir_inode_operations ;
 int ufs_dir_operations ;
 int ufs_make_empty (struct inode*,struct inode*) ;
 struct inode* ufs_new_inode (struct inode*,int) ;

__attribute__((used)) static int ufs_mkdir(struct inode * dir, struct dentry * dentry, umode_t mode)
{
 struct inode * inode;
 int err;

 inode_inc_link_count(dir);

 inode = ufs_new_inode(dir, S_IFDIR|mode);
 err = PTR_ERR(inode);
 if (IS_ERR(inode))
  goto out_dir;

 inode->i_op = &ufs_dir_inode_operations;
 inode->i_fop = &ufs_dir_operations;
 inode->i_mapping->a_ops = &ufs_aops;

 inode_inc_link_count(inode);

 err = ufs_make_empty(inode, dir);
 if (err)
  goto out_fail;

 err = ufs_add_link(dentry, inode);
 if (err)
  goto out_fail;

 d_instantiate_new(dentry, inode);
 return 0;

out_fail:
 inode_dec_link_count(inode);
 inode_dec_link_count(inode);
 discard_new_inode(inode);
out_dir:
 inode_dec_link_count(dir);
 return err;
}
