
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct inode {TYPE_1__* i_mapping; int i_sb; int * i_fop; int * i_op; } ;
struct dentry {int d_name; } ;
struct TYPE_2__ {int * a_ops; } ;


 scalar_t__ IS_ERR (struct inode*) ;
 int NOBH ;
 int PTR_ERR (struct inode*) ;
 int S_IFDIR ;
 int d_instantiate_new (struct dentry*,struct inode*) ;
 int discard_new_inode (struct inode*) ;
 int dquot_initialize (struct inode*) ;
 int ext2_add_link (struct dentry*,struct inode*) ;
 int ext2_aops ;
 int ext2_dir_inode_operations ;
 int ext2_dir_operations ;
 int ext2_make_empty (struct inode*,struct inode*) ;
 struct inode* ext2_new_inode (struct inode*,int,int *) ;
 int ext2_nobh_aops ;
 int inode_dec_link_count (struct inode*) ;
 int inode_inc_link_count (struct inode*) ;
 scalar_t__ test_opt (int ,int ) ;

__attribute__((used)) static int ext2_mkdir(struct inode * dir, struct dentry * dentry, umode_t mode)
{
 struct inode * inode;
 int err;

 err = dquot_initialize(dir);
 if (err)
  return err;

 inode_inc_link_count(dir);

 inode = ext2_new_inode(dir, S_IFDIR | mode, &dentry->d_name);
 err = PTR_ERR(inode);
 if (IS_ERR(inode))
  goto out_dir;

 inode->i_op = &ext2_dir_inode_operations;
 inode->i_fop = &ext2_dir_operations;
 if (test_opt(inode->i_sb, NOBH))
  inode->i_mapping->a_ops = &ext2_nobh_aops;
 else
  inode->i_mapping->a_ops = &ext2_aops;

 inode_inc_link_count(inode);

 err = ext2_make_empty(inode, dir);
 if (err)
  goto out_fail;

 err = ext2_add_link(dentry, inode);
 if (err)
  goto out_fail;

 d_instantiate_new(dentry, inode);
out:
 return err;

out_fail:
 inode_dec_link_count(inode);
 inode_dec_link_count(inode);
 discard_new_inode(inode);
out_dir:
 inode_dec_link_count(dir);
 goto out;
}
