
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_map {int dummy; } ;


 int __bpf_map_put (struct bpf_map*,int) ;

void bpf_map_put(struct bpf_map *map)
{
 __bpf_map_put(map, 1);
}
