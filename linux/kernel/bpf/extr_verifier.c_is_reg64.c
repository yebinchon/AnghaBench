
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct bpf_verifier_env {int dummy; } ;
struct bpf_reg_state {scalar_t__ type; } ;
struct bpf_insn {scalar_t__ code; scalar_t__ src_reg; int imm; } ;
typedef enum reg_arg_type { ____Placeholder_reg_arg_type } reg_arg_type ;


 scalar_t__ BPF_ALU ;
 scalar_t__ BPF_ALU64 ;
 scalar_t__ BPF_CALL ;
 scalar_t__ BPF_CLASS (scalar_t__) ;
 scalar_t__ BPF_DW ;
 scalar_t__ BPF_END ;
 scalar_t__ BPF_EXIT ;
 scalar_t__ BPF_IMM ;
 scalar_t__ BPF_JMP ;
 scalar_t__ BPF_JMP32 ;
 scalar_t__ BPF_LD ;
 scalar_t__ BPF_LDX ;
 scalar_t__ BPF_MODE (scalar_t__) ;
 scalar_t__ BPF_OP (scalar_t__) ;
 scalar_t__ BPF_PSEUDO_CALL ;
 scalar_t__ BPF_REG_6 ;
 scalar_t__ BPF_SIZE (scalar_t__) ;
 scalar_t__ BPF_ST ;
 scalar_t__ BPF_STX ;
 scalar_t__ SCALAR_VALUE ;
 int SRC_OP ;

__attribute__((used)) static bool is_reg64(struct bpf_verifier_env *env, struct bpf_insn *insn,
       u32 regno, struct bpf_reg_state *reg, enum reg_arg_type t)
{
 u8 code, class, op;

 code = insn->code;
 class = BPF_CLASS(code);
 op = BPF_OP(code);
 if (class == BPF_JMP) {



  if (op == BPF_EXIT)
   return 1;
  if (op == BPF_CALL) {





   if (insn->src_reg == BPF_PSEUDO_CALL)
    return 0;



   if (t == SRC_OP)
    return 1;

   return 0;
  }
 }

 if (class == BPF_ALU64 || class == BPF_JMP ||

     (class == BPF_ALU && op == BPF_END && insn->imm == 64))
  return 1;

 if (class == BPF_ALU || class == BPF_JMP32)
  return 0;

 if (class == BPF_LDX) {
  if (t != SRC_OP)
   return BPF_SIZE(code) == BPF_DW;

  return 1;
 }

 if (class == BPF_STX) {
  if (reg->type != SCALAR_VALUE)
   return 1;
  return BPF_SIZE(code) == BPF_DW;
 }

 if (class == BPF_LD) {
  u8 mode = BPF_MODE(code);


  if (mode == BPF_IMM)
   return 1;


  if (t != SRC_OP)
   return 0;


  if (regno == BPF_REG_6)
   return 1;


  return 1;
 }

 if (class == BPF_ST)

  return 1;


 return 1;
}
