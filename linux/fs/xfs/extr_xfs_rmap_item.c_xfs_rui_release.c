
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_rui_log_item {int rui_item; int rui_refcount; } ;


 int ASSERT (int) ;
 int SHUTDOWN_LOG_IO_ERROR ;
 scalar_t__ atomic_dec_and_test (int *) ;
 scalar_t__ atomic_read (int *) ;
 int xfs_rui_item_free (struct xfs_rui_log_item*) ;
 int xfs_trans_ail_remove (int *,int ) ;

void
xfs_rui_release(
 struct xfs_rui_log_item *ruip)
{
 ASSERT(atomic_read(&ruip->rui_refcount) > 0);
 if (atomic_dec_and_test(&ruip->rui_refcount)) {
  xfs_trans_ail_remove(&ruip->rui_item, SHUTDOWN_LOG_IO_ERROR);
  xfs_rui_item_free(ruip);
 }
}
