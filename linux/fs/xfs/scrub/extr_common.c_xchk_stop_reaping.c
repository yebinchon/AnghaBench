
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_scrub {int mp; int flags; } ;


 int XCHK_REAPING_DISABLED ;
 int xfs_stop_block_reaping (int ) ;

void
xchk_stop_reaping(
 struct xfs_scrub *sc)
{
 sc->flags |= XCHK_REAPING_DISABLED;
 xfs_stop_block_reaping(sc->mp);
}
