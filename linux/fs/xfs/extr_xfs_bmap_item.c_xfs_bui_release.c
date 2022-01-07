
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_bui_log_item {int bui_item; int bui_refcount; } ;


 int ASSERT (int) ;
 int SHUTDOWN_LOG_IO_ERROR ;
 scalar_t__ atomic_dec_and_test (int *) ;
 scalar_t__ atomic_read (int *) ;
 int xfs_bui_item_free (struct xfs_bui_log_item*) ;
 int xfs_trans_ail_remove (int *,int ) ;

void
xfs_bui_release(
 struct xfs_bui_log_item *buip)
{
 ASSERT(atomic_read(&buip->bui_refcount) > 0);
 if (atomic_dec_and_test(&buip->bui_refcount)) {
  xfs_trans_ail_remove(&buip->bui_item, SHUTDOWN_LOG_IO_ERROR);
  xfs_bui_item_free(buip);
 }
}
