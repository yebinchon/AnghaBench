
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union bpf_attr {int dummy; } bpf_attr ;
typedef enum bpf_cmd { ____Placeholder_bpf_cmd } bpf_cmd ;


 int __NR_bpf ;
 int syscall (int ,int,union bpf_attr*,unsigned int) ;

__attribute__((used)) static inline int sys_bpf(enum bpf_cmd cmd, union bpf_attr *attr,
     unsigned int size)
{
 return syscall(__NR_bpf, cmd, attr, size);
}
