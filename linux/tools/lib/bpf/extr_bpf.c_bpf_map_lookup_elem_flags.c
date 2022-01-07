
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union bpf_attr {int map_fd; int flags; void* value; void* key; } ;
typedef int attr ;
typedef int __u64 ;


 int BPF_MAP_LOOKUP_ELEM ;
 int memset (union bpf_attr*,int ,int) ;
 void* ptr_to_u64 (void*) ;
 int sys_bpf (int ,union bpf_attr*,int) ;

int bpf_map_lookup_elem_flags(int fd, const void *key, void *value, __u64 flags)
{
 union bpf_attr attr;

 memset(&attr, 0, sizeof(attr));
 attr.map_fd = fd;
 attr.key = ptr_to_u64(key);
 attr.value = ptr_to_u64(value);
 attr.flags = flags;

 return sys_bpf(BPF_MAP_LOOKUP_ELEM, &attr, sizeof(attr));
}
