
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union bpf_attr {int dummy; } bpf_attr ;


 int BPF_PROG_LOAD ;
 scalar_t__ EAGAIN ;
 scalar_t__ errno ;
 int sys_bpf (int ,union bpf_attr*,unsigned int) ;

__attribute__((used)) static inline int sys_bpf_prog_load(union bpf_attr *attr, unsigned int size)
{
 int fd;

 do {
  fd = sys_bpf(BPF_PROG_LOAD, attr, size);
 } while (fd < 0 && errno == EAGAIN);

 return fd;
}
