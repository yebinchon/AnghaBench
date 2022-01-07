
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 struct inode* ovl_inode_lower (struct inode*) ;
 scalar_t__ ovl_inode_upper (struct inode*) ;

struct inode *ovl_inode_real(struct inode *inode)
{
 return ovl_inode_upper(inode) ?: ovl_inode_lower(inode);
}
