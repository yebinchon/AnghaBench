
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {struct inode* d_inode; } ;


 scalar_t__ IS_WHITEOUT (struct inode*) ;

bool ovl_is_whiteout(struct dentry *dentry)
{
 struct inode *inode = dentry->d_inode;

 return inode && IS_WHITEOUT(inode);
}
