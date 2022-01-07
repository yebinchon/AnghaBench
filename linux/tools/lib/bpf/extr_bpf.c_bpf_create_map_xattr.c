
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union bpf_attr {int inner_map_fd; int map_ifindex; int btf_value_type_id; int btf_key_type_id; int btf_fd; int numa_node; int map_name; int map_flags; int max_entries; int value_size; int key_size; int map_type; } ;
struct bpf_create_map_attr {int inner_map_fd; int map_ifindex; int btf_value_type_id; int btf_key_type_id; int btf_fd; int numa_node; int name; int map_flags; int max_entries; int value_size; int key_size; int map_type; } ;
typedef int attr ;


 int BPF_MAP_CREATE ;
 scalar_t__ BPF_OBJ_NAME_LEN ;
 int memcpy (int ,int ,int ) ;
 int memset (union bpf_attr*,char,int) ;
 int min (int ,scalar_t__) ;
 int strlen (int ) ;
 int sys_bpf (int ,union bpf_attr*,int) ;

int bpf_create_map_xattr(const struct bpf_create_map_attr *create_attr)
{
 union bpf_attr attr;

 memset(&attr, '\0', sizeof(attr));

 attr.map_type = create_attr->map_type;
 attr.key_size = create_attr->key_size;
 attr.value_size = create_attr->value_size;
 attr.max_entries = create_attr->max_entries;
 attr.map_flags = create_attr->map_flags;
 if (create_attr->name)
  memcpy(attr.map_name, create_attr->name,
         min(strlen(create_attr->name), BPF_OBJ_NAME_LEN - 1));
 attr.numa_node = create_attr->numa_node;
 attr.btf_fd = create_attr->btf_fd;
 attr.btf_key_type_id = create_attr->btf_key_type_id;
 attr.btf_value_type_id = create_attr->btf_value_type_id;
 attr.map_ifindex = create_attr->map_ifindex;
 attr.inner_map_fd = create_attr->inner_map_fd;

 return sys_bpf(BPF_MAP_CREATE, &attr, sizeof(attr));
}
