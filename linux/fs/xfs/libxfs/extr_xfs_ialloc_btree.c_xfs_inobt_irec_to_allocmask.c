
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint ;
struct xfs_inobt_rec_incore {int ir_holemask; } ;


 int ASSERT (int) ;
 int NBBY ;
 int XFS_INOBT_HOLEMASK_BITS ;
 int XFS_INODES_PER_HOLEMASK_BIT ;
 int xfs_next_bit (int*,int,int) ;

uint64_t
xfs_inobt_irec_to_allocmask(
 struct xfs_inobt_rec_incore *rec)
{
 uint64_t bitmap = 0;
 uint64_t inodespbit;
 int nextbit;
 uint allocbitmap;






 inodespbit = (1 << XFS_INODES_PER_HOLEMASK_BIT) - 1;







 allocbitmap = ~rec->ir_holemask & ((1 << XFS_INOBT_HOLEMASK_BITS) - 1);







 nextbit = xfs_next_bit(&allocbitmap, 1, 0);
 while (nextbit != -1) {
  ASSERT(nextbit < (sizeof(rec->ir_holemask) * NBBY));

  bitmap |= (inodespbit <<
      (nextbit * XFS_INODES_PER_HOLEMASK_BIT));

  nextbit = xfs_next_bit(&allocbitmap, 1, nextbit + 1);
 }

 return bitmap;
}
