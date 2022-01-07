
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xfs_scrub {int sick_mask; int mp; int ip; TYPE_1__* sm; } ;
struct xfs_perag {int dummy; } ;
struct TYPE_4__ {int group; } ;
struct TYPE_3__ {int sm_flags; size_t sm_type; int sm_agno; } ;


 int ASSERT (int ) ;
 int XFS_SCRUB_OFLAG_CORRUPT ;




 TYPE_2__* type_to_health_flag ;
 int xfs_ag_mark_healthy (struct xfs_perag*,int ) ;
 int xfs_ag_mark_sick (struct xfs_perag*,int ) ;
 int xfs_fs_mark_healthy (int ,int ) ;
 int xfs_fs_mark_sick (int ,int ) ;
 int xfs_inode_mark_healthy (int ,int ) ;
 int xfs_inode_mark_sick (int ,int ) ;
 struct xfs_perag* xfs_perag_get (int ,int ) ;
 int xfs_perag_put (struct xfs_perag*) ;
 int xfs_rt_mark_healthy (int ,int ) ;
 int xfs_rt_mark_sick (int ,int ) ;

void
xchk_update_health(
 struct xfs_scrub *sc)
{
 struct xfs_perag *pag;
 bool bad;

 if (!sc->sick_mask)
  return;

 bad = (sc->sm->sm_flags & XFS_SCRUB_OFLAG_CORRUPT);
 switch (type_to_health_flag[sc->sm->sm_type].group) {
 case 131:
  pag = xfs_perag_get(sc->mp, sc->sm->sm_agno);
  if (bad)
   xfs_ag_mark_sick(pag, sc->sick_mask);
  else
   xfs_ag_mark_healthy(pag, sc->sick_mask);
  xfs_perag_put(pag);
  break;
 case 129:
  if (!sc->ip)
   return;
  if (bad)
   xfs_inode_mark_sick(sc->ip, sc->sick_mask);
  else
   xfs_inode_mark_healthy(sc->ip, sc->sick_mask);
  break;
 case 130:
  if (bad)
   xfs_fs_mark_sick(sc->mp, sc->sick_mask);
  else
   xfs_fs_mark_healthy(sc->mp, sc->sick_mask);
  break;
 case 128:
  if (bad)
   xfs_rt_mark_sick(sc->mp, sc->sick_mask);
  else
   xfs_rt_mark_healthy(sc->mp, sc->sick_mask);
  break;
 default:
  ASSERT(0);
  break;
 }
}
