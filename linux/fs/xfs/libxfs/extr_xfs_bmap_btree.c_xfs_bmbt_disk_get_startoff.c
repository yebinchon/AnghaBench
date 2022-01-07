
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xfs_fileoff_t ;
struct TYPE_3__ {int l0; } ;
typedef TYPE_1__ xfs_bmbt_rec_t ;


 scalar_t__ BMBT_EXNTFLAG_BITLEN ;
 scalar_t__ be64_to_cpu (int ) ;
 int xfs_mask64lo (scalar_t__) ;

xfs_fileoff_t
xfs_bmbt_disk_get_startoff(
 xfs_bmbt_rec_t *r)
{
 return ((xfs_fileoff_t)be64_to_cpu(r->l0) &
   xfs_mask64lo(64 - BMBT_EXNTFLAG_BITLEN)) >> 9;
}
