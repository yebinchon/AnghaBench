
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union bpf_attr {int target_fd; int attach_bpf_fd; int attach_type; unsigned int attach_flags; } ;
typedef enum bpf_attach_type { ____Placeholder_bpf_attach_type } bpf_attach_type ;
typedef int attr ;


 int BPF_PROG_ATTACH ;
 int memset (union bpf_attr*,int ,int) ;
 int sys_bpf (int ,union bpf_attr*,int) ;

int bpf_prog_attach(int prog_fd, int target_fd, enum bpf_attach_type type,
      unsigned int flags)
{
 union bpf_attr attr;

 memset(&attr, 0, sizeof(attr));
 attr.target_fd = target_fd;
 attr.attach_bpf_fd = prog_fd;
 attr.attach_type = type;
 attr.attach_flags = flags;

 return sys_bpf(BPF_PROG_ATTACH, &attr, sizeof(attr));
}
