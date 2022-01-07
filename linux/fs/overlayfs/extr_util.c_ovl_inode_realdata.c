
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 scalar_t__ ovl_has_upperdata (struct inode*) ;
 struct inode* ovl_inode_lowerdata (struct inode*) ;
 struct inode* ovl_inode_upper (struct inode*) ;

struct inode *ovl_inode_realdata(struct inode *inode)
{
 struct inode *upperinode;

 upperinode = ovl_inode_upper(inode);
 if (upperinode && ovl_has_upperdata(inode))
  return upperinode;

 return ovl_inode_lowerdata(inode);
}
