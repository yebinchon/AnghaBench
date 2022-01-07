
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_map {int fd; } ;


 int EINVAL ;

int bpf_map__fd(const struct bpf_map *map)
{
 return map ? map->fd : -EINVAL;
}
