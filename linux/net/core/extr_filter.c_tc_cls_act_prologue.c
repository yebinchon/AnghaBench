
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_prog {int dummy; } ;
struct bpf_insn {int dummy; } ;


 int TC_ACT_SHOT ;
 int bpf_unclone_prologue (struct bpf_insn*,int,struct bpf_prog const*,int ) ;

__attribute__((used)) static int tc_cls_act_prologue(struct bpf_insn *insn_buf, bool direct_write,
          const struct bpf_prog *prog)
{
 return bpf_unclone_prologue(insn_buf, direct_write, prog, TC_ACT_SHOT);
}
