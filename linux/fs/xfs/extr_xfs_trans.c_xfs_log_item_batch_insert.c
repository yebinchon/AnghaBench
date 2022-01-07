
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfs_lsn_t ;
struct xfs_log_item {TYPE_1__* li_ops; } ;
struct xfs_ail_cursor {int dummy; } ;
struct xfs_ail {int ail_lock; } ;
struct TYPE_2__ {int (* iop_unpin ) (struct xfs_log_item*,int ) ;} ;


 int spin_lock (int *) ;
 int stub1 (struct xfs_log_item*,int ) ;
 int xfs_trans_ail_update_bulk (struct xfs_ail*,struct xfs_ail_cursor*,struct xfs_log_item**,int,int ) ;

__attribute__((used)) static inline void
xfs_log_item_batch_insert(
 struct xfs_ail *ailp,
 struct xfs_ail_cursor *cur,
 struct xfs_log_item **log_items,
 int nr_items,
 xfs_lsn_t commit_lsn)
{
 int i;

 spin_lock(&ailp->ail_lock);

 xfs_trans_ail_update_bulk(ailp, cur, log_items, nr_items, commit_lsn);

 for (i = 0; i < nr_items; i++) {
  struct xfs_log_item *lip = log_items[i];

  if (lip->li_ops->iop_unpin)
   lip->li_ops->iop_unpin(lip, 0);
 }
}
