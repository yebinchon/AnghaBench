
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 struct inode* d_inode (struct dentry*) ;
 struct dentry* ovl_i_dentry_upper (struct inode*) ;

struct inode *ovl_inode_upper(struct inode *inode)
{
 struct dentry *upperdentry = ovl_i_dentry_upper(inode);

 return upperdentry ? d_inode(upperdentry) : ((void*)0);
}
