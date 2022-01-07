
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_map_def {int dummy; } ;
struct bpf_map {struct bpf_map_def const def; } ;


 int EINVAL ;
 struct bpf_map_def const* ERR_PTR (int ) ;

const struct bpf_map_def *bpf_map__def(const struct bpf_map *map)
{
 return map ? &map->def : ERR_PTR(-EINVAL);
}
