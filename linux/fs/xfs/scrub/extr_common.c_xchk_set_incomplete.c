
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_scrub {TYPE_1__* sm; } ;
struct TYPE_2__ {int sm_flags; } ;


 int XFS_SCRUB_OFLAG_INCOMPLETE ;
 int __return_address ;
 int trace_xchk_incomplete (struct xfs_scrub*,int ) ;

void
xchk_set_incomplete(
 struct xfs_scrub *sc)
{
 sc->sm->sm_flags |= XFS_SCRUB_OFLAG_INCOMPLETE;
 trace_xchk_incomplete(sc, __return_address);
}
