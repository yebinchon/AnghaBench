
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_inode_info {scalar_t__ i_root; scalar_t__ i_cno; int i_state; } ;
struct nilfs_iget_args {scalar_t__ ino; scalar_t__ root; scalar_t__ cno; scalar_t__ for_gc; } ;
struct inode {scalar_t__ i_ino; } ;


 struct nilfs_inode_info* NILFS_I (struct inode*) ;
 int NILFS_I_GCINODE ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int nilfs_iget_test(struct inode *inode, void *opaque)
{
 struct nilfs_iget_args *args = opaque;
 struct nilfs_inode_info *ii;

 if (args->ino != inode->i_ino || args->root != NILFS_I(inode)->i_root)
  return 0;

 ii = NILFS_I(inode);
 if (!test_bit(NILFS_I_GCINODE, &ii->i_state))
  return !args->for_gc;

 return args->for_gc && args->cno == ii->i_cno;
}
