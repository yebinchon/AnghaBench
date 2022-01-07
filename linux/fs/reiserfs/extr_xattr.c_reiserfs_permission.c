
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 scalar_t__ IS_PRIVATE (struct inode*) ;
 int generic_permission (struct inode*,int) ;

int reiserfs_permission(struct inode *inode, int mask)
{




 if (IS_PRIVATE(inode))
  return 0;

 return generic_permission(inode, mask);
}
