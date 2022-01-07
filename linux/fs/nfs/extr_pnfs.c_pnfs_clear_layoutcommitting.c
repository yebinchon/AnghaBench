
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {unsigned long flags; } ;


 TYPE_1__* NFS_I (struct inode*) ;
 int NFS_INO_LAYOUTCOMMITTING ;
 int clear_bit_unlock (int ,unsigned long*) ;
 int smp_mb__after_atomic () ;
 int wake_up_bit (unsigned long*,int ) ;

__attribute__((used)) static void pnfs_clear_layoutcommitting(struct inode *inode)
{
 unsigned long *bitlock = &NFS_I(inode)->flags;

 clear_bit_unlock(NFS_INO_LAYOUTCOMMITTING, bitlock);
 smp_mb__after_atomic();
 wake_up_bit(bitlock, NFS_INO_LAYOUTCOMMITTING);
}
