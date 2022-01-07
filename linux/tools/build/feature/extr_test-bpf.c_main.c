
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union bpf_attr {scalar_t__ prog_flags; scalar_t__ kern_version; scalar_t__ log_level; scalar_t__ log_size; scalar_t__ log_buf; scalar_t__ license; scalar_t__ insns; scalar_t__ insn_cnt; int prog_type; } ;
typedef int attr ;


 int BPF_PROG_LOAD ;
 int BPF_PROG_TYPE_KPROBE ;
 int __NR_bpf ;
 int syscall (int ,int ,union bpf_attr*,int) ;

int main(void)
{
 union bpf_attr attr;


 attr.prog_type = BPF_PROG_TYPE_KPROBE;
 attr.insn_cnt = 0;
 attr.insns = 0;
 attr.license = 0;
 attr.log_buf = 0;
 attr.log_size = 0;
 attr.log_level = 0;
 attr.kern_version = 0;
 attr.prog_flags = 0;





 return syscall(__NR_bpf, BPF_PROG_LOAD, &attr, sizeof(attr));
}
