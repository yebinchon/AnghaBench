
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_insn {int dummy; } ;



__attribute__((used)) static unsigned int __bpf_prog_ret1(const void *ctx,
        const struct bpf_insn *insn)
{
 return 1;
}
