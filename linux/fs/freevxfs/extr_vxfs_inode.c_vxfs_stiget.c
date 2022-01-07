
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct inode {int i_ino; } ;
typedef int ino_t ;
struct TYPE_2__ {int vsi_stilist; } ;


 int VXFS_INO (struct inode*) ;
 TYPE_1__* VXFS_SBI (struct super_block*) ;
 int __vxfs_iget (int ,int ,int ) ;
 int get_next_ino () ;
 int iput (struct inode*) ;
 struct inode* new_inode (struct super_block*) ;

struct inode *
vxfs_stiget(struct super_block *sbp, ino_t ino)
{
 struct inode *inode;
 int error;

 inode = new_inode(sbp);
 if (!inode)
  return ((void*)0);
 inode->i_ino = get_next_ino();

 error = __vxfs_iget(VXFS_SBI(sbp)->vsi_stilist, VXFS_INO(inode), ino);
 if (error) {
  iput(inode);
  return ((void*)0);
 }

 return inode;
}
