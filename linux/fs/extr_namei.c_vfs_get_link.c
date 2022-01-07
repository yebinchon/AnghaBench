
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {TYPE_1__* i_op; } ;
struct dentry {int dummy; } ;
struct delayed_call {int dummy; } ;
struct TYPE_2__ {char* (* get_link ) (struct dentry*,struct inode*,struct delayed_call*) ;} ;


 int EINVAL ;
 char* ERR_PTR (int ) ;
 struct inode* d_inode (struct dentry*) ;
 scalar_t__ d_is_symlink (struct dentry*) ;
 int security_inode_readlink (struct dentry*) ;
 char* stub1 (struct dentry*,struct inode*,struct delayed_call*) ;

const char *vfs_get_link(struct dentry *dentry, struct delayed_call *done)
{
 const char *res = ERR_PTR(-EINVAL);
 struct inode *inode = d_inode(dentry);

 if (d_is_symlink(dentry)) {
  res = ERR_PTR(security_inode_readlink(dentry));
  if (!res)
   res = inode->i_op->get_link(dentry, inode, done);
 }
 return res;
}
