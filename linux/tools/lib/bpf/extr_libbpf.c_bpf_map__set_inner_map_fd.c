
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct bpf_map {int inner_map_fd; TYPE_1__ def; } ;


 int EINVAL ;
 int bpf_map_type__is_map_in_map (int ) ;
 int pr_warning (char*) ;

int bpf_map__set_inner_map_fd(struct bpf_map *map, int fd)
{
 if (!bpf_map_type__is_map_in_map(map->def.type)) {
  pr_warning("error: unsupported map type\n");
  return -EINVAL;
 }
 if (map->inner_map_fd != -1) {
  pr_warning("error: inner_map_fd already specified\n");
  return -EINVAL;
 }
 map->inner_map_fd = fd;
 return 0;
}
