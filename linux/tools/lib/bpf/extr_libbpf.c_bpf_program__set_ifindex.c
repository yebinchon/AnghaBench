
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_program {int prog_ifindex; } ;
typedef int __u32 ;



void bpf_program__set_ifindex(struct bpf_program *prog, __u32 ifindex)
{
 prog->prog_ifindex = ifindex;
}
