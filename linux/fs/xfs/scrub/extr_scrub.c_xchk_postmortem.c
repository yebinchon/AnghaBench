
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_scrub {int mp; TYPE_1__* sm; } ;
struct TYPE_2__ {int sm_flags; } ;


 int XFS_SCRUB_OFLAG_CORRUPT ;
 int XFS_SCRUB_OFLAG_XCORRUPT ;
 int xfs_alert_ratelimited (int ,char*) ;

__attribute__((used)) static inline void xchk_postmortem(struct xfs_scrub *sc)
{




 if (sc->sm->sm_flags & (XFS_SCRUB_OFLAG_CORRUPT |
    XFS_SCRUB_OFLAG_XCORRUPT))
  xfs_alert_ratelimited(sc->mp,
    "Corruption detected during scrub.");
}
