
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct xfs_log_item {struct xfs_ail* li_ailp; } ;
struct xfs_buf {int dummy; } ;
struct xfs_ail {int ail_lock; } ;
struct TYPE_3__ {struct xfs_buf* bli_buf; } ;


 int ASSERT (int) ;
 TYPE_1__* BUF_ITEM (struct xfs_log_item*) ;
 int SHUTDOWN_CORRUPT_INCORE ;
 int spin_lock (int *) ;
 int xfs_buf_item_free (TYPE_1__*) ;
 int xfs_buf_rele (struct xfs_buf*) ;
 int xfs_trans_ail_delete (struct xfs_ail*,struct xfs_log_item*,int ) ;

void
xfs_buf_iodone(
 struct xfs_buf *bp,
 struct xfs_log_item *lip)
{
 struct xfs_ail *ailp = lip->li_ailp;

 ASSERT(BUF_ITEM(lip)->bli_buf == bp);

 xfs_buf_rele(bp);
 spin_lock(&ailp->ail_lock);
 xfs_trans_ail_delete(ailp, lip, SHUTDOWN_CORRUPT_INCORE);
 xfs_buf_item_free(BUF_ITEM(lip));
}
