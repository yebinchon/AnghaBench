
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_bmbt_rec_base_t ;
struct xfs_bmbt_rec {int l1; int l0; } ;
struct xfs_bmbt_irec {scalar_t__ br_state; int br_startoff; int br_blockcount; int br_startblock; } ;


 int ASSERT (int) ;
 scalar_t__ BMBT_BLOCKCOUNT_BITLEN ;
 scalar_t__ BMBT_STARTBLOCK_BITLEN ;
 scalar_t__ BMBT_STARTOFF_BITLEN ;
 scalar_t__ XFS_EXT_NORM ;
 scalar_t__ XFS_EXT_UNWRITTEN ;
 int put_unaligned_be64 (int,int *) ;
 int xfs_mask64hi (scalar_t__) ;
 scalar_t__ xfs_mask64lo (int) ;

void
xfs_bmbt_disk_set_all(
 struct xfs_bmbt_rec *r,
 struct xfs_bmbt_irec *s)
{
 int extent_flag = (s->br_state != XFS_EXT_NORM);

 ASSERT(s->br_state == XFS_EXT_NORM || s->br_state == XFS_EXT_UNWRITTEN);
 ASSERT(!(s->br_startoff & xfs_mask64hi(64-BMBT_STARTOFF_BITLEN)));
 ASSERT(!(s->br_blockcount & xfs_mask64hi(64-BMBT_BLOCKCOUNT_BITLEN)));
 ASSERT(!(s->br_startblock & xfs_mask64hi(64-BMBT_STARTBLOCK_BITLEN)));

 put_unaligned_be64(
  ((xfs_bmbt_rec_base_t)extent_flag << 63) |
   ((xfs_bmbt_rec_base_t)s->br_startoff << 9) |
   ((xfs_bmbt_rec_base_t)s->br_startblock >> 43), &r->l0);
 put_unaligned_be64(
  ((xfs_bmbt_rec_base_t)s->br_startblock << 21) |
   ((xfs_bmbt_rec_base_t)s->br_blockcount &
    (xfs_bmbt_rec_base_t)xfs_mask64lo(21)), &r->l1);
}
