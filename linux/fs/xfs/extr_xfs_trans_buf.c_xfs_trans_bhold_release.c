
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int xfs_trans_t ;
struct TYPE_5__ {int * b_transp; struct xfs_buf_log_item* b_log_item; } ;
typedef TYPE_2__ xfs_buf_t ;
struct TYPE_4__ {int blf_flags; } ;
struct xfs_buf_log_item {int bli_flags; int bli_refcount; TYPE_1__ __bli_format; } ;


 int ASSERT (int) ;
 int XFS_BLF_CANCEL ;
 int XFS_BLI_HOLD ;
 int XFS_BLI_STALE ;
 scalar_t__ atomic_read (int *) ;
 int trace_xfs_trans_bhold_release (struct xfs_buf_log_item*) ;

void
xfs_trans_bhold_release(
 xfs_trans_t *tp,
 xfs_buf_t *bp)
{
 struct xfs_buf_log_item *bip = bp->b_log_item;

 ASSERT(bp->b_transp == tp);
 ASSERT(bip != ((void*)0));
 ASSERT(!(bip->bli_flags & XFS_BLI_STALE));
 ASSERT(!(bip->__bli_format.blf_flags & XFS_BLF_CANCEL));
 ASSERT(atomic_read(&bip->bli_refcount) > 0);
 ASSERT(bip->bli_flags & XFS_BLI_HOLD);

 bip->bli_flags &= ~XFS_BLI_HOLD;
 trace_xfs_trans_bhold_release(bip);
}
