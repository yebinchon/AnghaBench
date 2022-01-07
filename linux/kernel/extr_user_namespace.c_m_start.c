
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uid_gid_map {unsigned int nr_extents; void* extent; void* forward; } ;
struct seq_file {int dummy; } ;
typedef unsigned int loff_t ;


 unsigned int UID_GID_MAP_MAX_BASE_EXTENTS ;
 int smp_rmb () ;

__attribute__((used)) static void *m_start(struct seq_file *seq, loff_t *ppos,
       struct uid_gid_map *map)
{
 loff_t pos = *ppos;
 unsigned extents = map->nr_extents;
 smp_rmb();

 if (pos >= extents)
  return ((void*)0);

 if (extents <= UID_GID_MAP_MAX_BASE_EXTENTS)
  return &map->extent[pos];

 return &map->forward[pos];
}
