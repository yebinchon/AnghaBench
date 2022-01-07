
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int xfs_failaddr_t ;
struct xfs_scrub {TYPE_2__* sm; } ;
struct xfs_buf {int b_bn; TYPE_1__* b_ops; } ;
struct TYPE_4__ {int sm_flags; } ;
struct TYPE_3__ {int (* verify_struct ) (struct xfs_buf*) ;} ;


 int XFS_SCRUB_OFLAG_CORRUPT ;
 int stub1 (struct xfs_buf*) ;
 int trace_xchk_block_error (struct xfs_scrub*,int ,int ) ;
 int xchk_block_set_corrupt (struct xfs_scrub*,struct xfs_buf*) ;
 int xchk_set_incomplete (struct xfs_scrub*) ;

void
xchk_buffer_recheck(
 struct xfs_scrub *sc,
 struct xfs_buf *bp)
{
 xfs_failaddr_t fa;

 if (bp->b_ops == ((void*)0)) {
  xchk_block_set_corrupt(sc, bp);
  return;
 }
 if (bp->b_ops->verify_struct == ((void*)0)) {
  xchk_set_incomplete(sc);
  return;
 }
 fa = bp->b_ops->verify_struct(bp);
 if (!fa)
  return;
 sc->sm->sm_flags |= XFS_SCRUB_OFLAG_CORRUPT;
 trace_xchk_block_error(sc, bp->b_bn, fa);
}
