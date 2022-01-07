
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_map {int btf_key_type_id; } ;
typedef int __u32 ;



__u32 bpf_map__btf_key_type_id(const struct bpf_map *map)
{
 return map ? map->btf_key_type_id : 0;
}
