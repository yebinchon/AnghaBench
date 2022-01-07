
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfs_extent_t ;
struct TYPE_2__ {int efi_nextents; } ;
struct xfs_efi_log_item {TYPE_1__ efi_format; } ;
struct xfs_efi_log_format {int dummy; } ;



__attribute__((used)) static inline int
xfs_efi_item_sizeof(
 struct xfs_efi_log_item *efip)
{
 return sizeof(struct xfs_efi_log_format) +
        (efip->efi_format.efi_nextents - 1) * sizeof(xfs_extent_t);
}
