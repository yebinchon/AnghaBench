
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_scrub {int dummy; } ;


 int XFS_BTNUM_CNT ;
 int xchk_allocbt (struct xfs_scrub*,int ) ;

int
xchk_cntbt(
 struct xfs_scrub *sc)
{
 return xchk_allocbt(sc, XFS_BTNUM_CNT);
}
