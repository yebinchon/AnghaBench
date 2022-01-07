
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union bpf_attr {int target_fd; int attach_type; } ;
typedef enum bpf_attach_type { ____Placeholder_bpf_attach_type } bpf_attach_type ;
typedef int attr ;


 int BPF_PROG_DETACH ;
 int memset (union bpf_attr*,int ,int) ;
 int sys_bpf (int ,union bpf_attr*,int) ;

int bpf_prog_detach(int target_fd, enum bpf_attach_type type)
{
 union bpf_attr attr;

 memset(&attr, 0, sizeof(attr));
 attr.target_fd = target_fd;
 attr.attach_type = type;

 return sys_bpf(BPF_PROG_DETACH, &attr, sizeof(attr));
}
