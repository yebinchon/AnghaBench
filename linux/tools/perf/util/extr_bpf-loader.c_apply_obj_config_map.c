
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_map {int dummy; } ;


 int apply_obj_config_map_for_key ;
 int bpf_map_config_foreach_key (struct bpf_map*,int ,int *) ;

__attribute__((used)) static int
apply_obj_config_map(struct bpf_map *map)
{
 return bpf_map_config_foreach_key(map,
       apply_obj_config_map_for_key,
       ((void*)0));
}
