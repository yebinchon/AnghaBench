
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ max_entries; } ;
struct bpf_map {scalar_t__ fd; TYPE_1__ def; } ;
typedef scalar_t__ __u32 ;


 int EBUSY ;
 int EINVAL ;

int bpf_map__resize(struct bpf_map *map, __u32 max_entries)
{
 if (!map || !max_entries)
  return -EINVAL;


 if (map->fd >= 0)
  return -EBUSY;

 map->def.max_entries = max_entries;

 return 0;
}
