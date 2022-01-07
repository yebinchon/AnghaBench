
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ufs_sb_private_info {int dummy; } ;
struct TYPE_2__ {unsigned int count; int ** bh; } ;


 TYPE_1__* USPI_UBH (struct ufs_sb_private_info*) ;
 int brelse (int *) ;

void ubh_brelse_uspi (struct ufs_sb_private_info * uspi)
{
 unsigned i;
 if (!USPI_UBH(uspi))
  return;
 for ( i = 0; i < USPI_UBH(uspi)->count; i++ ) {
  brelse (USPI_UBH(uspi)->bh[i]);
  USPI_UBH(uspi)->bh[i] = ((void*)0);
 }
}
