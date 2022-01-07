
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union bpf_attr {int map_flags; int max_entries; int value_size; int key_size; int map_type; } ;
struct bpf_map {int numa_node; int map_flags; int max_entries; int value_size; int key_size; int map_type; } ;


 int bpf_map_attr_numa_node (union bpf_attr*) ;
 int bpf_map_flags_retain_permanent (int ) ;

void bpf_map_init_from_attr(struct bpf_map *map, union bpf_attr *attr)
{
 map->map_type = attr->map_type;
 map->key_size = attr->key_size;
 map->value_size = attr->value_size;
 map->max_entries = attr->max_entries;
 map->map_flags = bpf_map_flags_retain_permanent(attr->map_flags);
 map->numa_node = bpf_map_attr_numa_node(attr);
}
