
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_bpf {int bpf_ops; } ;



__attribute__((used)) static bool tcf_bpf_is_ebpf(const struct tcf_bpf *prog)
{
 return !prog->bpf_ops;
}
