
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_map {int dummy; } ;


 int bpf_map_put (struct bpf_map*) ;
 int bpf_map_put_uref (struct bpf_map*) ;

void bpf_map_put_with_uref(struct bpf_map *map)
{
 bpf_map_put_uref(map);
 bpf_map_put(map);
}
