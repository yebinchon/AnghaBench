
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xfs_trans {int t_flags; } ;
struct TYPE_4__ {int li_flags; int li_cb; } ;
struct TYPE_3__ {int blf_flags; } ;
struct xfs_buf_log_item {int bli_flags; TYPE_2__ bli_item; TYPE_1__ __bli_format; int bli_refcount; } ;
struct xfs_buf {int b_flags; int * b_iodone; struct xfs_trans* b_transp; struct xfs_buf_log_item* b_log_item; } ;


 int ASSERT (int) ;
 int XBF_DONE ;
 int XBF_STALE ;
 int XFS_BLF_CANCEL ;
 int XFS_BLI_DIRTY ;
 int XFS_BLI_LOGGED ;
 int XFS_BLI_STALE ;
 int XFS_LI_DIRTY ;
 int XFS_TRANS_DIRTY ;
 scalar_t__ atomic_read (int *) ;
 int set_bit (int ,int *) ;
 int xfs_buf_iodone ;
 int * xfs_buf_iodone_callbacks ;

void
xfs_trans_dirty_buf(
 struct xfs_trans *tp,
 struct xfs_buf *bp)
{
 struct xfs_buf_log_item *bip = bp->b_log_item;

 ASSERT(bp->b_transp == tp);
 ASSERT(bip != ((void*)0));
 ASSERT(bp->b_iodone == ((void*)0) ||
        bp->b_iodone == xfs_buf_iodone_callbacks);
 bp->b_flags |= XBF_DONE;

 ASSERT(atomic_read(&bip->bli_refcount) > 0);
 bp->b_iodone = xfs_buf_iodone_callbacks;
 bip->bli_item.li_cb = xfs_buf_iodone;







 if (bip->bli_flags & XFS_BLI_STALE) {
  bip->bli_flags &= ~XFS_BLI_STALE;
  ASSERT(bp->b_flags & XBF_STALE);
  bp->b_flags &= ~XBF_STALE;
  bip->__bli_format.blf_flags &= ~XFS_BLF_CANCEL;
 }
 bip->bli_flags |= XFS_BLI_DIRTY | XFS_BLI_LOGGED;

 tp->t_flags |= XFS_TRANS_DIRTY;
 set_bit(XFS_LI_DIRTY, &bip->bli_item.li_flags);
}
