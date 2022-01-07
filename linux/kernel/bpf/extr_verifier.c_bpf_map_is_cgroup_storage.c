
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_map {scalar_t__ map_type; } ;


 scalar_t__ BPF_MAP_TYPE_CGROUP_STORAGE ;
 scalar_t__ BPF_MAP_TYPE_PERCPU_CGROUP_STORAGE ;

__attribute__((used)) static bool bpf_map_is_cgroup_storage(struct bpf_map *map)
{
 return (map->map_type == BPF_MAP_TYPE_CGROUP_STORAGE ||
  map->map_type == BPF_MAP_TYPE_PERCPU_CGROUP_STORAGE);
}
