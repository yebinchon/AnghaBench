
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int xfs_trans_t ;
struct TYPE_4__ {int * b_transp; struct xfs_buf_log_item* b_log_item; } ;
typedef TYPE_1__ xfs_buf_t ;
struct xfs_buf_log_item {int bli_flags; int bli_refcount; } ;


 int ASSERT (int) ;
 int XFS_BLFT_DINO_BUF ;
 int XFS_BLI_INODE_ALLOC_BUF ;
 scalar_t__ atomic_read (int *) ;
 int xfs_trans_buf_set_type (int *,TYPE_1__*,int ) ;

void
xfs_trans_inode_alloc_buf(
 xfs_trans_t *tp,
 xfs_buf_t *bp)
{
 struct xfs_buf_log_item *bip = bp->b_log_item;

 ASSERT(bp->b_transp == tp);
 ASSERT(bip != ((void*)0));
 ASSERT(atomic_read(&bip->bli_refcount) > 0);

 bip->bli_flags |= XFS_BLI_INODE_ALLOC_BUF;
 xfs_trans_buf_set_type(tp, bp, XFS_BLFT_DINO_BUF);
}
