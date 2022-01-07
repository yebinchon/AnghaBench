
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_map {char const* name; } ;



const char *bpf_map__name(const struct bpf_map *map)
{
 return map ? map->name : ((void*)0);
}
