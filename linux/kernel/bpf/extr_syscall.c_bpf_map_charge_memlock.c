
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int pages; int user; } ;
struct bpf_map {TYPE_1__ memory; } ;


 int bpf_charge_memlock (int ,scalar_t__) ;

int bpf_map_charge_memlock(struct bpf_map *map, u32 pages)
{
 int ret;

 ret = bpf_charge_memlock(map->memory.user, pages);
 if (ret)
  return ret;
 map->memory.pages += pages;
 return ret;
}
