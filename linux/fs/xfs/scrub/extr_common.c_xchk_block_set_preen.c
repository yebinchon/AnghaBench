
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_scrub {TYPE_1__* sm; } ;
struct xfs_buf {int b_bn; } ;
struct TYPE_2__ {int sm_flags; } ;


 int XFS_SCRUB_OFLAG_PREEN ;
 int __return_address ;
 int trace_xchk_block_preen (struct xfs_scrub*,int ,int ) ;

void
xchk_block_set_preen(
 struct xfs_scrub *sc,
 struct xfs_buf *bp)
{
 sc->sm->sm_flags |= XFS_SCRUB_OFLAG_PREEN;
 trace_xchk_block_preen(sc, bp->b_bn, __return_address);
}
