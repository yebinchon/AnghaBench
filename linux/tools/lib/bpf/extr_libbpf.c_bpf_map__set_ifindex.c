
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_map {int map_ifindex; } ;
typedef int __u32 ;



void bpf_map__set_ifindex(struct bpf_map *map, __u32 ifindex)
{
 map->map_ifindex = ifindex;
}
