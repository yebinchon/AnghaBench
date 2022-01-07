
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_bmbt_irec {scalar_t__ br_state; scalar_t__ br_startblock; } ;


 scalar_t__ DELAYSTARTBLOCK ;
 scalar_t__ HOLESTARTBLOCK ;
 scalar_t__ XFS_EXT_UNWRITTEN ;
 int isnullstartblock (scalar_t__) ;

__attribute__((used)) static inline bool xfs_bmap_is_real_extent(struct xfs_bmbt_irec *irec)
{
 return irec->br_state != XFS_EXT_UNWRITTEN &&
  irec->br_startblock != HOLESTARTBLOCK &&
  irec->br_startblock != DELAYSTARTBLOCK &&
  !isnullstartblock(irec->br_startblock);
}
