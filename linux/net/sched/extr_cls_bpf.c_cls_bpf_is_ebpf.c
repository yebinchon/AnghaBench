
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cls_bpf_prog {int bpf_ops; } ;



__attribute__((used)) static bool cls_bpf_is_ebpf(const struct cls_bpf_prog *prog)
{
 return !prog->bpf_ops;
}
