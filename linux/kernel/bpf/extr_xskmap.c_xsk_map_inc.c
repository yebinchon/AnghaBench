
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_map {int dummy; } ;
struct xsk_map {struct bpf_map map; } ;


 int PTR_ERR_OR_ZERO (struct bpf_map*) ;
 struct bpf_map* bpf_map_inc (struct bpf_map*,int) ;

int xsk_map_inc(struct xsk_map *map)
{
 struct bpf_map *m = &map->map;

 m = bpf_map_inc(m, 0);
 return PTR_ERR_OR_ZERO(m);
}
