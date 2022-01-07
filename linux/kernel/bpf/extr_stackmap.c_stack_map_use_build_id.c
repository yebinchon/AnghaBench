
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_map {int map_flags; } ;


 int BPF_F_STACK_BUILD_ID ;

__attribute__((used)) static inline bool stack_map_use_build_id(struct bpf_map *map)
{
 return (map->map_flags & BPF_F_STACK_BUILD_ID);
}
