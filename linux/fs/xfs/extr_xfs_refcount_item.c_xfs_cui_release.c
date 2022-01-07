
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_cui_log_item {int cui_item; int cui_refcount; } ;


 int ASSERT (int) ;
 int SHUTDOWN_LOG_IO_ERROR ;
 scalar_t__ atomic_dec_and_test (int *) ;
 scalar_t__ atomic_read (int *) ;
 int xfs_cui_item_free (struct xfs_cui_log_item*) ;
 int xfs_trans_ail_remove (int *,int ) ;

void
xfs_cui_release(
 struct xfs_cui_log_item *cuip)
{
 ASSERT(atomic_read(&cuip->cui_refcount) > 0);
 if (atomic_dec_and_test(&cuip->cui_refcount)) {
  xfs_trans_ail_remove(&cuip->cui_item, SHUTDOWN_LOG_IO_ERROR);
  xfs_cui_item_free(cuip);
 }
}
