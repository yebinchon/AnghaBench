
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int pages; int user; } ;
struct bpf_map {TYPE_1__ memory; } ;


 int bpf_uncharge_memlock (int ,scalar_t__) ;

void bpf_map_uncharge_memlock(struct bpf_map *map, u32 pages)
{
 bpf_uncharge_memlock(map->memory.user, pages);
 map->memory.pages -= pages;
}
