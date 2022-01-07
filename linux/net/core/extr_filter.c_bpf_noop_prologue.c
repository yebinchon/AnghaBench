
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_prog {int dummy; } ;
struct bpf_insn {int dummy; } ;



__attribute__((used)) static int bpf_noop_prologue(struct bpf_insn *insn_buf, bool direct_write,
        const struct bpf_prog *prog)
{



 return 0;
}
