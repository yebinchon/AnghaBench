
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ xfs_agnumber_t ;
struct xfs_perag {int dummy; } ;
struct TYPE_2__ {scalar_t__ sb_agcount; } ;
struct xfs_mount {TYPE_1__ m_sb; } ;


 scalar_t__ XFS_FORCED_SHUTDOWN (struct xfs_mount*) ;
 unsigned int XFS_SICK_FS_COUNTERS ;
 int trace_xfs_ag_unfixed_corruption (struct xfs_mount*,scalar_t__,unsigned int) ;
 int trace_xfs_fs_unfixed_corruption (struct xfs_mount*,unsigned int) ;
 int trace_xfs_rt_unfixed_corruption (struct xfs_mount*,unsigned int) ;
 int xfs_ag_measure_sickness (struct xfs_perag*,unsigned int*,unsigned int*) ;
 int xfs_fs_mark_healthy (struct xfs_mount*,unsigned int) ;
 int xfs_fs_measure_sickness (struct xfs_mount*,unsigned int*,unsigned int*) ;
 struct xfs_perag* xfs_perag_get (struct xfs_mount*,scalar_t__) ;
 int xfs_perag_put (struct xfs_perag*) ;
 int xfs_rt_measure_sickness (struct xfs_mount*,unsigned int*,unsigned int*) ;
 int xfs_warn (struct xfs_mount*,char*) ;

void
xfs_health_unmount(
 struct xfs_mount *mp)
{
 struct xfs_perag *pag;
 xfs_agnumber_t agno;
 unsigned int sick = 0;
 unsigned int checked = 0;
 bool warn = 0;

 if (XFS_FORCED_SHUTDOWN(mp))
  return;


 for (agno = 0; agno < mp->m_sb.sb_agcount; agno++) {
  pag = xfs_perag_get(mp, agno);
  xfs_ag_measure_sickness(pag, &sick, &checked);
  if (sick) {
   trace_xfs_ag_unfixed_corruption(mp, agno, sick);
   warn = 1;
  }
  xfs_perag_put(pag);
 }


 xfs_rt_measure_sickness(mp, &sick, &checked);
 if (sick) {
  trace_xfs_rt_unfixed_corruption(mp, sick);
  warn = 1;
 }





 xfs_fs_measure_sickness(mp, &sick, &checked);
 if (sick & ~XFS_SICK_FS_COUNTERS) {
  trace_xfs_fs_unfixed_corruption(mp, sick);
  warn = 1;
 }

 if (warn) {
  xfs_warn(mp,
"Uncorrected metadata errors detected; please run xfs_repair.");
  if (sick & XFS_SICK_FS_COUNTERS)
   xfs_fs_mark_healthy(mp, XFS_SICK_FS_COUNTERS);
 }
}
