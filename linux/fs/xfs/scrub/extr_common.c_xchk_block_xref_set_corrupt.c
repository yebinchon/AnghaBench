
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_scrub {TYPE_1__* sm; } ;
struct xfs_buf {int b_bn; } ;
struct TYPE_2__ {int sm_flags; } ;


 int XFS_SCRUB_OFLAG_XCORRUPT ;
 int __return_address ;
 int trace_xchk_block_error (struct xfs_scrub*,int ,int ) ;

void
xchk_block_xref_set_corrupt(
 struct xfs_scrub *sc,
 struct xfs_buf *bp)
{
 sc->sm->sm_flags |= XFS_SCRUB_OFLAG_XCORRUPT;
 trace_xchk_block_error(sc, bp->b_bn, __return_address);
}
