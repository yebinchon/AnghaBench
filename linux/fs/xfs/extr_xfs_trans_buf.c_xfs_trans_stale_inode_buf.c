
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int xfs_trans_t ;
struct TYPE_6__ {int * b_transp; struct xfs_buf_log_item* b_log_item; } ;
typedef TYPE_2__ xfs_buf_t ;
struct TYPE_5__ {int li_cb; } ;
struct xfs_buf_log_item {TYPE_1__ bli_item; int bli_flags; int bli_refcount; } ;


 int ASSERT (int) ;
 int XFS_BLFT_DINO_BUF ;
 int XFS_BLI_STALE_INODE ;
 scalar_t__ atomic_read (int *) ;
 int xfs_buf_iodone ;
 int xfs_trans_buf_set_type (int *,TYPE_2__*,int ) ;

void
xfs_trans_stale_inode_buf(
 xfs_trans_t *tp,
 xfs_buf_t *bp)
{
 struct xfs_buf_log_item *bip = bp->b_log_item;

 ASSERT(bp->b_transp == tp);
 ASSERT(bip != ((void*)0));
 ASSERT(atomic_read(&bip->bli_refcount) > 0);

 bip->bli_flags |= XFS_BLI_STALE_INODE;
 bip->bli_item.li_cb = xfs_buf_iodone;
 xfs_trans_buf_set_type(tp, bp, XFS_BLFT_DINO_BUF);
}
