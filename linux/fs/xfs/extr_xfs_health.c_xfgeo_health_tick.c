
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_fsop_geom {int sick; int checked; } ;
struct ioctl_sick_map {unsigned int sick_mask; int ioctl_mask; } ;



__attribute__((used)) static inline void
xfgeo_health_tick(
 struct xfs_fsop_geom *geo,
 unsigned int sick,
 unsigned int checked,
 const struct ioctl_sick_map *m)
{
 if (checked & m->sick_mask)
  geo->checked |= m->ioctl_mask;
 if (sick & m->sick_mask)
  geo->sick |= m->ioctl_mask;
}
