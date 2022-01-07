
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
typedef int spinlock_t ;
struct TYPE_2__ {int mi_bgl; } ;


 TYPE_1__* NILFS_MDT (struct inode*) ;
 int * bgl_lock_ptr (int ,unsigned int) ;

__attribute__((used)) static inline spinlock_t *
nilfs_mdt_bgl_lock(struct inode *inode, unsigned int block_group)
{
 return bgl_lock_ptr(NILFS_MDT(inode)->mi_bgl, block_group);
}
