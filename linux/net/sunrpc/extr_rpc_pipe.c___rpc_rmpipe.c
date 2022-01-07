
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int __rpc_unlink (struct inode*,struct dentry*) ;
 struct inode* d_inode (struct dentry*) ;
 int rpc_close_pipes (struct inode*) ;

__attribute__((used)) static int __rpc_rmpipe(struct inode *dir, struct dentry *dentry)
{
 struct inode *inode = d_inode(dentry);

 rpc_close_pipes(inode);
 return __rpc_unlink(dir, dentry);
}
