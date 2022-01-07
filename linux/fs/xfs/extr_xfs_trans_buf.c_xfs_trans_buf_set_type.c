
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_trans {int dummy; } ;
struct xfs_buf_log_item {int __bli_format; int bli_refcount; } ;
struct xfs_buf {struct xfs_trans* b_transp; struct xfs_buf_log_item* b_log_item; } ;
typedef enum xfs_blft { ____Placeholder_xfs_blft } xfs_blft ;


 int ASSERT (int) ;
 scalar_t__ atomic_read (int *) ;
 int xfs_blft_to_flags (int *,int) ;

void
xfs_trans_buf_set_type(
 struct xfs_trans *tp,
 struct xfs_buf *bp,
 enum xfs_blft type)
{
 struct xfs_buf_log_item *bip = bp->b_log_item;

 if (!tp)
  return;

 ASSERT(bp->b_transp == tp);
 ASSERT(bip != ((void*)0));
 ASSERT(atomic_read(&bip->bli_refcount) > 0);

 xfs_blft_to_flags(&bip->__bli_format, type);
}
