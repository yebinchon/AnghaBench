
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union bpf_attr {int map_fd; void* next_key; void* key; } ;
typedef int attr ;


 int BPF_MAP_GET_NEXT_KEY ;
 int memset (union bpf_attr*,int ,int) ;
 void* ptr_to_u64 (void*) ;
 int sys_bpf (int ,union bpf_attr*,int) ;

int bpf_map_get_next_key(int fd, const void *key, void *next_key)
{
 union bpf_attr attr;

 memset(&attr, 0, sizeof(attr));
 attr.map_fd = fd;
 attr.key = ptr_to_u64(key);
 attr.next_key = ptr_to_u64(next_key);

 return sys_bpf(BPF_MAP_GET_NEXT_KEY, &attr, sizeof(attr));
}
