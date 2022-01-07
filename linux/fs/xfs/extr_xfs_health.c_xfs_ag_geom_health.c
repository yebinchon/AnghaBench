
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_perag {int dummy; } ;
struct xfs_ag_geometry {int ag_sick; int ag_checked; } ;
struct ioctl_sick_map {int sick_mask; int ioctl_mask; } ;


 struct ioctl_sick_map* ag_map ;
 int xfs_ag_measure_sickness (struct xfs_perag*,unsigned int*,unsigned int*) ;

void
xfs_ag_geom_health(
 struct xfs_perag *pag,
 struct xfs_ag_geometry *ageo)
{
 const struct ioctl_sick_map *m;
 unsigned int sick;
 unsigned int checked;

 ageo->ag_sick = 0;
 ageo->ag_checked = 0;

 xfs_ag_measure_sickness(pag, &sick, &checked);
 for (m = ag_map; m->sick_mask; m++) {
  if (checked & m->sick_mask)
   ageo->ag_checked |= m->ioctl_mask;
  if (sick & m->sick_mask)
   ageo->ag_sick |= m->ioctl_mask;
 }
}
