
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_scrub {int flags; int mp; } ;


 int XCHK_REAPING_DISABLED ;
 int xfs_start_block_reaping (int ) ;

void
xchk_start_reaping(
 struct xfs_scrub *sc)
{
 xfs_start_block_reaping(sc->mp);
 sc->flags &= ~XCHK_REAPING_DISABLED;
}
