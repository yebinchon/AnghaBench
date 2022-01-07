
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union bpf_attr {int map_type; int key_size; int value_size; int inner_map_fd; int max_entries; int numa_node; int map_flags; int map_name; } ;
typedef enum bpf_map_type { ____Placeholder_bpf_map_type } bpf_map_type ;
typedef int attr ;
typedef int __u32 ;


 int BPF_F_NUMA_NODE ;
 int BPF_MAP_CREATE ;
 scalar_t__ BPF_OBJ_NAME_LEN ;
 int memcpy (int ,char const*,int ) ;
 int memset (union bpf_attr*,char,int) ;
 int min (int ,scalar_t__) ;
 int strlen (char const*) ;
 int sys_bpf (int ,union bpf_attr*,int) ;

int bpf_create_map_in_map_node(enum bpf_map_type map_type, const char *name,
          int key_size, int inner_map_fd, int max_entries,
          __u32 map_flags, int node)
{
 union bpf_attr attr;

 memset(&attr, '\0', sizeof(attr));

 attr.map_type = map_type;
 attr.key_size = key_size;
 attr.value_size = 4;
 attr.inner_map_fd = inner_map_fd;
 attr.max_entries = max_entries;
 attr.map_flags = map_flags;
 if (name)
  memcpy(attr.map_name, name,
         min(strlen(name), BPF_OBJ_NAME_LEN - 1));

 if (node >= 0) {
  attr.map_flags |= BPF_F_NUMA_NODE;
  attr.numa_node = node;
 }

 return sys_bpf(BPF_MAP_CREATE, &attr, sizeof(attr));
}
