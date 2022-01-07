
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_scrub {TYPE_1__* sm; } ;
struct TYPE_2__ {int sm_flags; } ;


 int XFS_SCRUB_OFLAG_CORRUPT ;
 int __return_address ;
 int trace_xchk_fs_error (struct xfs_scrub*,int ,int ) ;

void
xchk_set_corrupt(
 struct xfs_scrub *sc)
{
 sc->sm->sm_flags |= XFS_SCRUB_OFLAG_CORRUPT;
 trace_xchk_fs_error(sc, 0, __return_address);
}
