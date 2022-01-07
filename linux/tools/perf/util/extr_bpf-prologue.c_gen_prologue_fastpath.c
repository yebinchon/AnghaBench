
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct probe_trace_arg {int value; } ;
struct bpf_insn_pos {int dummy; } ;


 scalar_t__ BPF_PROLOGUE_START_ARG_REG ;
 int BPF_REG_1 ;
 int check_pos (struct bpf_insn_pos*) ;
 int gen_ldx_reg_from_ctx (struct bpf_insn_pos*,int ,int ,scalar_t__) ;

__attribute__((used)) static int
gen_prologue_fastpath(struct bpf_insn_pos *pos,
        struct probe_trace_arg *args, int nargs)
{
 int i, err = 0;

 for (i = 0; i < nargs; i++) {
  err = gen_ldx_reg_from_ctx(pos, BPF_REG_1, args[i].value,
        BPF_PROLOGUE_START_ARG_REG + i);
  if (err)
   goto errout;
 }

 return check_pos(pos);
errout:
 return err;
}
