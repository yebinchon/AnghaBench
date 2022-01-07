
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nilfs_root {scalar_t__ cno; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {struct nilfs_root* i_root; } ;


 int EROFS ;
 int MAY_WRITE ;
 scalar_t__ NILFS_CPTREE_CURRENT_CNO ;
 TYPE_1__* NILFS_I (struct inode*) ;
 int generic_permission (struct inode*,int) ;

int nilfs_permission(struct inode *inode, int mask)
{
 struct nilfs_root *root = NILFS_I(inode)->i_root;

 if ((mask & MAY_WRITE) && root &&
     root->cno != NILFS_CPTREE_CURRENT_CNO)
  return -EROFS;

 return generic_permission(inode, mask);
}
