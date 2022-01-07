
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfs_ino_t ;
struct xfs_scrub {TYPE_1__* sm; } ;
struct TYPE_2__ {int sm_flags; } ;


 int XFS_SCRUB_OFLAG_WARNING ;
 int __return_address ;
 int trace_xchk_ino_warning (struct xfs_scrub*,int ,int ) ;

void
xchk_ino_set_warning(
 struct xfs_scrub *sc,
 xfs_ino_t ino)
{
 sc->sm->sm_flags |= XFS_SCRUB_OFLAG_WARNING;
 trace_xchk_ino_warning(sc, ino, __return_address);
}
