
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_map {void* priv; } ;


 int EINVAL ;
 void* ERR_PTR (int ) ;

void *bpf_map__priv(const struct bpf_map *map)
{
 return map ? map->priv : ERR_PTR(-EINVAL);
}
