
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int prog_fd; int name; } ;
union bpf_attr {TYPE_1__ raw_tracepoint; } ;
typedef int attr ;


 int BPF_RAW_TRACEPOINT_OPEN ;
 int memset (union bpf_attr*,int ,int) ;
 int ptr_to_u64 (char const*) ;
 int sys_bpf (int ,union bpf_attr*,int) ;

int bpf_raw_tracepoint_open(const char *name, int prog_fd)
{
 union bpf_attr attr;

 memset(&attr, 0, sizeof(attr));
 attr.raw_tracepoint.name = ptr_to_u64(name);
 attr.raw_tracepoint.prog_fd = prog_fd;

 return sys_bpf(BPF_RAW_TRACEPOINT_OPEN, &attr, sizeof(attr));
}
