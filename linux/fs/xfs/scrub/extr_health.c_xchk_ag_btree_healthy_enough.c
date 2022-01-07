
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfs_btnum_t ;
struct xfs_scrub {TYPE_1__* sm; } ;
struct xfs_perag {int dummy; } ;
struct TYPE_2__ {int sm_flags; int sm_type; } ;


 int ASSERT (int ) ;






 int XFS_SCRUB_OFLAG_XFAIL ;
 int XFS_SCRUB_TYPE_BNOBT ;
 int XFS_SCRUB_TYPE_CNTBT ;
 int XFS_SCRUB_TYPE_FINOBT ;
 int XFS_SCRUB_TYPE_INOBT ;
 int XFS_SCRUB_TYPE_REFCNTBT ;
 int XFS_SCRUB_TYPE_RMAPBT ;
 unsigned int XFS_SICK_AG_BNOBT ;
 unsigned int XFS_SICK_AG_CNTBT ;
 unsigned int XFS_SICK_AG_FINOBT ;
 unsigned int XFS_SICK_AG_INOBT ;
 unsigned int XFS_SICK_AG_REFCNTBT ;
 unsigned int XFS_SICK_AG_RMAPBT ;
 scalar_t__ xfs_ag_has_sickness (struct xfs_perag*,unsigned int) ;

bool
xchk_ag_btree_healthy_enough(
 struct xfs_scrub *sc,
 struct xfs_perag *pag,
 xfs_btnum_t btnum)
{
 unsigned int mask = 0;
 switch (btnum) {
 case 133:
  if (sc->sm->sm_type == XFS_SCRUB_TYPE_BNOBT)
   return 1;
  mask = XFS_SICK_AG_BNOBT;
  break;
 case 132:
  if (sc->sm->sm_type == XFS_SCRUB_TYPE_CNTBT)
   return 1;
  mask = XFS_SICK_AG_CNTBT;
  break;
 case 130:
  if (sc->sm->sm_type == XFS_SCRUB_TYPE_INOBT)
   return 1;
  mask = XFS_SICK_AG_INOBT;
  break;
 case 131:
  if (sc->sm->sm_type == XFS_SCRUB_TYPE_FINOBT)
   return 1;
  mask = XFS_SICK_AG_FINOBT;
  break;
 case 128:
  if (sc->sm->sm_type == XFS_SCRUB_TYPE_RMAPBT)
   return 1;
  mask = XFS_SICK_AG_RMAPBT;
  break;
 case 129:
  if (sc->sm->sm_type == XFS_SCRUB_TYPE_REFCNTBT)
   return 1;
  mask = XFS_SICK_AG_REFCNTBT;
  break;
 default:
  ASSERT(0);
  return 1;
 }

 if (xfs_ag_has_sickness(pag, mask)) {
  sc->sm->sm_flags |= XFS_SCRUB_OFLAG_XFAIL;
  return 0;
 }

 return 1;
}
