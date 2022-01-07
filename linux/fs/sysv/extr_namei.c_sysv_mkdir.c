
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int S_IFDIR ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int inode_dec_link_count (struct inode*) ;
 int inode_inc_link_count (struct inode*) ;
 int iput (struct inode*) ;
 int sysv_add_link (struct dentry*,struct inode*) ;
 int sysv_make_empty (struct inode*,struct inode*) ;
 struct inode* sysv_new_inode (struct inode*,int) ;
 int sysv_set_inode (struct inode*,int ) ;

__attribute__((used)) static int sysv_mkdir(struct inode * dir, struct dentry *dentry, umode_t mode)
{
 struct inode * inode;
 int err;

 inode_inc_link_count(dir);

 inode = sysv_new_inode(dir, S_IFDIR|mode);
 err = PTR_ERR(inode);
 if (IS_ERR(inode))
  goto out_dir;

 sysv_set_inode(inode, 0);

 inode_inc_link_count(inode);

 err = sysv_make_empty(inode, dir);
 if (err)
  goto out_fail;

 err = sysv_add_link(dentry, inode);
 if (err)
  goto out_fail;

        d_instantiate(dentry, inode);
out:
 return err;

out_fail:
 inode_dec_link_count(inode);
 inode_dec_link_count(inode);
 iput(inode);
out_dir:
 inode_dec_link_count(dir);
 goto out;
}
