
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_map {scalar_t__ map_type; int map_flags; } ;


 int BPF_F_NO_PREALLOC ;
 scalar_t__ BPF_MAP_TYPE_HASH ;
 scalar_t__ BPF_MAP_TYPE_HASH_OF_MAPS ;
 scalar_t__ BPF_MAP_TYPE_PERCPU_HASH ;

__attribute__((used)) static int check_map_prealloc(struct bpf_map *map)
{
 return (map->map_type != BPF_MAP_TYPE_HASH &&
  map->map_type != BPF_MAP_TYPE_PERCPU_HASH &&
  map->map_type != BPF_MAP_TYPE_HASH_OF_MAPS) ||
  !(map->map_flags & BPF_F_NO_PREALLOC);
}
