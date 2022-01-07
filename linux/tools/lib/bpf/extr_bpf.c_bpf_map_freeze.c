
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union bpf_attr {int map_fd; } ;
typedef int attr ;


 int BPF_MAP_FREEZE ;
 int memset (union bpf_attr*,int ,int) ;
 int sys_bpf (int ,union bpf_attr*,int) ;

int bpf_map_freeze(int fd)
{
 union bpf_attr attr;

 memset(&attr, 0, sizeof(attr));
 attr.map_fd = fd;

 return sys_bpf(BPF_MAP_FREEZE, &attr, sizeof(attr));
}
