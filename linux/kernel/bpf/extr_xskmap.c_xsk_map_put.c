
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xsk_map {int map; } ;


 int bpf_map_put (int *) ;

void xsk_map_put(struct xsk_map *map)
{
 bpf_map_put(&map->map);
}
