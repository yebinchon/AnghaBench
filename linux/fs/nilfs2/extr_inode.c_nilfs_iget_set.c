
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nilfs_iget_args {scalar_t__ ino; int * root; int cno; scalar_t__ for_gc; } ;
struct inode {scalar_t__ i_ino; } ;
struct TYPE_2__ {int * i_root; int i_cno; int i_state; } ;


 int BIT (int ) ;
 TYPE_1__* NILFS_I (struct inode*) ;
 int NILFS_I_GCINODE ;
 scalar_t__ NILFS_ROOT_INO ;
 int nilfs_get_root (int *) ;

__attribute__((used)) static int nilfs_iget_set(struct inode *inode, void *opaque)
{
 struct nilfs_iget_args *args = opaque;

 inode->i_ino = args->ino;
 if (args->for_gc) {
  NILFS_I(inode)->i_state = BIT(NILFS_I_GCINODE);
  NILFS_I(inode)->i_cno = args->cno;
  NILFS_I(inode)->i_root = ((void*)0);
 } else {
  if (args->root && args->ino == NILFS_ROOT_INO)
   nilfs_get_root(args->root);
  NILFS_I(inode)->i_root = args->root;
 }
 return 0;
}
