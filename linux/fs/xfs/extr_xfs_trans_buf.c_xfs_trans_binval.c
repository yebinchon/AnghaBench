
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int t_flags; } ;
typedef TYPE_4__ xfs_trans_t ;
struct TYPE_13__ {int b_flags; TYPE_4__* b_transp; struct xfs_buf_log_item* b_log_item; } ;
typedef TYPE_5__ xfs_buf_t ;
typedef int uint ;
struct TYPE_11__ {int li_flags; } ;
struct TYPE_9__ {int blf_flags; } ;
struct xfs_buf_log_item {int bli_flags; int bli_format_count; TYPE_3__ bli_item; TYPE_2__* bli_formats; TYPE_1__ __bli_format; int bli_refcount; } ;
struct TYPE_10__ {int blf_map_size; int blf_data_map; } ;


 int ASSERT (int) ;
 int XBF_STALE ;
 int XFS_BLFT_MASK ;
 int XFS_BLF_CANCEL ;
 int XFS_BLF_INODE_BUF ;
 int XFS_BLI_DIRTY ;
 int XFS_BLI_INODE_BUF ;
 int XFS_BLI_LOGGED ;
 int XFS_BLI_STALE ;
 int XFS_LI_DIRTY ;
 int XFS_TRANS_DIRTY ;
 scalar_t__ atomic_read (int *) ;
 int memset (int ,int ,int) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 int trace_xfs_trans_binval (struct xfs_buf_log_item*) ;
 int xfs_buf_stale (TYPE_5__*) ;

void
xfs_trans_binval(
 xfs_trans_t *tp,
 xfs_buf_t *bp)
{
 struct xfs_buf_log_item *bip = bp->b_log_item;
 int i;

 ASSERT(bp->b_transp == tp);
 ASSERT(bip != ((void*)0));
 ASSERT(atomic_read(&bip->bli_refcount) > 0);

 trace_xfs_trans_binval(bip);

 if (bip->bli_flags & XFS_BLI_STALE) {




  ASSERT(bp->b_flags & XBF_STALE);
  ASSERT(!(bip->bli_flags & (XFS_BLI_LOGGED | XFS_BLI_DIRTY)));
  ASSERT(!(bip->__bli_format.blf_flags & XFS_BLF_INODE_BUF));
  ASSERT(!(bip->__bli_format.blf_flags & XFS_BLFT_MASK));
  ASSERT(bip->__bli_format.blf_flags & XFS_BLF_CANCEL);
  ASSERT(test_bit(XFS_LI_DIRTY, &bip->bli_item.li_flags));
  ASSERT(tp->t_flags & XFS_TRANS_DIRTY);
  return;
 }

 xfs_buf_stale(bp);

 bip->bli_flags |= XFS_BLI_STALE;
 bip->bli_flags &= ~(XFS_BLI_INODE_BUF | XFS_BLI_LOGGED | XFS_BLI_DIRTY);
 bip->__bli_format.blf_flags &= ~XFS_BLF_INODE_BUF;
 bip->__bli_format.blf_flags |= XFS_BLF_CANCEL;
 bip->__bli_format.blf_flags &= ~XFS_BLFT_MASK;
 for (i = 0; i < bip->bli_format_count; i++) {
  memset(bip->bli_formats[i].blf_data_map, 0,
         (bip->bli_formats[i].blf_map_size * sizeof(uint)));
 }
 set_bit(XFS_LI_DIRTY, &bip->bli_item.li_flags);
 tp->t_flags |= XFS_TRANS_DIRTY;
}
