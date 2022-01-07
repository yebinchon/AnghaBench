
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 scalar_t__ ovl_has_upperdata (struct inode*) ;
 struct inode* ovl_inode_upper (struct inode*) ;

__attribute__((used)) static char ovl_whatisit(struct inode *inode, struct inode *realinode)
{
 if (realinode != ovl_inode_upper(inode))
  return 'l';
 if (ovl_has_upperdata(inode))
  return 'u';
 else
  return 'm';
}
