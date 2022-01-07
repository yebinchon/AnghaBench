
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct probe_trace_arg_ref {char const* offset; struct probe_trace_arg_ref* next; } ;
struct probe_trace_arg {char* value; int type; struct probe_trace_arg_ref* ref; } ;
struct bpf_insn_pos {int dummy; } ;


 int BPF_ADD ;
 int BPF_ALU64_IMM (int ,int ,int) ;
 int BPF_DW ;
 int BPF_JA ;
 int BPF_JMP_IMM (int ,int ,int ,int ) ;
 int BPF_LDX_MEM (int,scalar_t__,int ,int) ;
 int BPF_MOV64_REG (int ,int ) ;
 scalar_t__ BPF_PROLOGUE_START_ARG_REG ;
 int BPF_REG_0 ;
 int BPF_REG_3 ;
 int BPF_REG_7 ;
 scalar_t__ BPF_REG_ARG3 ;
 int BPF_REG_CTX ;
 int BPF_REG_FP ;
 int BPF_REG_SIZE ;
 int BPF_STX_MEM (int,int ,scalar_t__,int) ;
 int JMP_TO_SUCCESS_CODE ;
 int argtype_to_ldx_size (int ) ;
 int check_pos (struct bpf_insn_pos*) ;
 int gen_ldx_reg_from_ctx (struct bpf_insn_pos*,int ,char const*,scalar_t__) ;
 int gen_read_mem (struct bpf_insn_pos*,int ,int ,char const*) ;
 int ins (int ,struct bpf_insn_pos*) ;
 char const* insn_sz_to_str (int) ;
 int pr_debug (char*,int,char const*) ;
 int pr_err (char*,...) ;

__attribute__((used)) static int
gen_prologue_slowpath(struct bpf_insn_pos *pos,
        struct probe_trace_arg *args, int nargs)
{
 int err, i;

 for (i = 0; i < nargs; i++) {
  struct probe_trace_arg *arg = &args[i];
  const char *reg = arg->value;
  struct probe_trace_arg_ref *ref = ((void*)0);
  int stack_offset = (i + 1) * -8;

  pr_debug("prologue: fetch arg %d, base reg is %s\n",
    i, reg);


  err = gen_ldx_reg_from_ctx(pos, BPF_REG_CTX, reg,
        BPF_REG_ARG3);
  if (err) {
   pr_err("prologue: failed to get offset of register %s\n",
          reg);
   goto errout;
  }


  ins(BPF_MOV64_REG(BPF_REG_7, BPF_REG_FP), pos);

  ins(BPF_ALU64_IMM(BPF_ADD, BPF_REG_7, stack_offset), pos);







  ins(BPF_STX_MEM(BPF_DW, BPF_REG_FP, BPF_REG_ARG3,
    stack_offset), pos);

  ref = arg->ref;
  while (ref) {
   pr_debug("prologue: arg %d: offset %ld\n",
     i, ref->offset);
   err = gen_read_mem(pos, BPF_REG_3, BPF_REG_7,
        ref->offset);
   if (err) {
    pr_err("prologue: failed to generate probe_read function call\n");
    goto errout;
   }

   ref = ref->next;





   if (ref)
    ins(BPF_LDX_MEM(BPF_DW, BPF_REG_ARG3,
      BPF_REG_FP, stack_offset), pos);
  }
 }


 for (i = 0; i < nargs; i++) {
  int insn_sz = (args[i].ref) ? argtype_to_ldx_size(args[i].type) : BPF_DW;

  pr_debug("prologue: load arg %d, insn_sz is %s\n",
    i, insn_sz_to_str(insn_sz));
  ins(BPF_LDX_MEM(insn_sz, BPF_PROLOGUE_START_ARG_REG + i,
    BPF_REG_FP, -BPF_REG_SIZE * (i + 1)), pos);
 }

 ins(BPF_JMP_IMM(BPF_JA, BPF_REG_0, 0, JMP_TO_SUCCESS_CODE), pos);

 return check_pos(pos);
errout:
 return err;
}
