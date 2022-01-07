
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_insn_pos {int dummy; } ;


 int BPF_DW ;
 int BPF_LDX_MEM (int ,int,int,int) ;
 int check_pos (struct bpf_insn_pos*) ;
 int ins (int ,struct bpf_insn_pos*) ;
 int pr_err (char*,char const*) ;
 int regs_query_register_offset (char const*) ;

__attribute__((used)) static int
gen_ldx_reg_from_ctx(struct bpf_insn_pos *pos, int ctx_reg,
       const char *reg, int target_reg)
{
 int offset = regs_query_register_offset(reg);

 if (offset < 0) {
  pr_err("bpf: prologue: failed to get register %s\n",
         reg);
  return offset;
 }
 ins(BPF_LDX_MEM(BPF_DW, target_reg, ctx_reg, offset), pos);

 return check_pos(pos);
}
