
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_efi_log_item {int efi_item; int efi_refcount; } ;


 int ASSERT (int) ;
 int SHUTDOWN_LOG_IO_ERROR ;
 scalar_t__ atomic_dec_and_test (int *) ;
 scalar_t__ atomic_read (int *) ;
 int xfs_efi_item_free (struct xfs_efi_log_item*) ;
 int xfs_trans_ail_remove (int *,int ) ;

void
xfs_efi_release(
 struct xfs_efi_log_item *efip)
{
 ASSERT(atomic_read(&efip->efi_refcount) > 0);
 if (atomic_dec_and_test(&efip->efi_refcount)) {
  xfs_trans_ail_remove(&efip->efi_item, SHUTDOWN_LOG_IO_ERROR);
  xfs_efi_item_free(efip);
 }
}
