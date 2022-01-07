
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_create_map_attr {char const* name; int map_type; int key_size; int value_size; int max_entries; int numa_node; int map_flags; } ;
typedef enum bpf_map_type { ____Placeholder_bpf_map_type } bpf_map_type ;
typedef int __u32 ;


 int BPF_F_NUMA_NODE ;
 int bpf_create_map_xattr (struct bpf_create_map_attr*) ;

int bpf_create_map_node(enum bpf_map_type map_type, const char *name,
   int key_size, int value_size, int max_entries,
   __u32 map_flags, int node)
{
 struct bpf_create_map_attr map_attr = {};

 map_attr.name = name;
 map_attr.map_type = map_type;
 map_attr.map_flags = map_flags;
 map_attr.key_size = key_size;
 map_attr.value_size = value_size;
 map_attr.max_entries = max_entries;
 if (node >= 0) {
  map_attr.numa_node = node;
  map_attr.map_flags |= BPF_F_NUMA_NODE;
 }

 return bpf_create_map_xattr(&map_attr);
}
