
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ sb_blocklog; } ;
typedef TYPE_1__ xfs_sb_t ;
typedef int uint64_t ;


 int ASSERT (int) ;
 scalar_t__ BBSHIFT ;
 int EFBIG ;
 scalar_t__ PAGE_SHIFT ;
 scalar_t__ ULONG_MAX ;

int
xfs_sb_validate_fsb_count(
 xfs_sb_t *sbp,
 uint64_t nblocks)
{
 ASSERT(PAGE_SHIFT >= sbp->sb_blocklog);
 ASSERT(sbp->sb_blocklog >= BBSHIFT);


 if (nblocks >> (PAGE_SHIFT - sbp->sb_blocklog) > ULONG_MAX)
  return -EFBIG;
 return 0;
}
