
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_create_map_attr {char* name; int key_size; int value_size; int max_entries; int inner_map_fd; int map_type; } ;
typedef int __u32 ;


 int BPF_MAP_TYPE_ARRAY_OF_MAPS ;
 int BPF_MAP_TYPE_REUSEPORT_SOCKARRAY ;
 int CHECK (int,char*,char*,int,int ) ;
 int REUSEPORT_ARRAY_SIZE ;
 int bpf_create_map_xattr (struct bpf_create_map_attr*) ;
 int errno ;
 int outer_map ;
 int reuseport_array ;

__attribute__((used)) static void create_maps(void)
{
 struct bpf_create_map_attr attr = {};


 attr.name = "reuseport_array";
 attr.map_type = BPF_MAP_TYPE_REUSEPORT_SOCKARRAY;
 attr.key_size = sizeof(__u32);
 attr.value_size = sizeof(__u32);
 attr.max_entries = REUSEPORT_ARRAY_SIZE;

 reuseport_array = bpf_create_map_xattr(&attr);
 CHECK(reuseport_array == -1, "creating reuseport_array",
       "reuseport_array:%d errno:%d\n", reuseport_array, errno);


 attr.name = "outer_map";
 attr.map_type = BPF_MAP_TYPE_ARRAY_OF_MAPS;
 attr.key_size = sizeof(__u32);
 attr.value_size = sizeof(__u32);
 attr.max_entries = 1;
 attr.inner_map_fd = reuseport_array;
 outer_map = bpf_create_map_xattr(&attr);
 CHECK(outer_map == -1, "creating outer_map",
       "outer_map:%d errno:%d\n", outer_map, errno);
}
