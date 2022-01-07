
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bpf_map {int map_type; } ;






 void* __cpu_map_lookup_elem (struct bpf_map*,int ) ;
 void* __dev_map_hash_lookup_elem (struct bpf_map*,int ) ;
 void* __dev_map_lookup_elem (struct bpf_map*,int ) ;
 void* __xsk_map_lookup_elem (struct bpf_map*,int ) ;

__attribute__((used)) static inline void *__xdp_map_lookup_elem(struct bpf_map *map, u32 index)
{
 switch (map->map_type) {
 case 130:
  return __dev_map_lookup_elem(map, index);
 case 129:
  return __dev_map_hash_lookup_elem(map, index);
 case 131:
  return __cpu_map_lookup_elem(map, index);
 case 128:
  return __xsk_map_lookup_elem(map, index);
 default:
  return ((void*)0);
 }
}
