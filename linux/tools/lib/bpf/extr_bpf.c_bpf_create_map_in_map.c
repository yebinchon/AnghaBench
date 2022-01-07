
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum bpf_map_type { ____Placeholder_bpf_map_type } bpf_map_type ;
typedef int __u32 ;


 int bpf_create_map_in_map_node (int,char const*,int,int,int,int ,int) ;

int bpf_create_map_in_map(enum bpf_map_type map_type, const char *name,
     int key_size, int inner_map_fd, int max_entries,
     __u32 map_flags)
{
 return bpf_create_map_in_map_node(map_type, name, key_size,
       inner_map_fd, max_entries, map_flags,
       -1);
}
