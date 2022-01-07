
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct bpf_verifier_state {size_t curframe; struct bpf_func_state** frame; } ;
struct bpf_verifier_env {int insn_idx; struct bpf_verifier_state* cur_state; } ;
struct bpf_reg_state {scalar_t__ type; int precise; int live; int parent; } ;
struct bpf_func_state {int allocated_stack; struct bpf_reg_state* regs; TYPE_1__* stack; } ;
struct TYPE_2__ {struct bpf_reg_state spilled_ptr; scalar_t__* slot_type; } ;


 int BPF_REG_SIZE ;
 int EACCES ;
 int REG_LIVE_READ64 ;
 int REG_LIVE_WRITTEN ;
 scalar_t__ SCALAR_VALUE ;
 scalar_t__ STACK_MISC ;
 scalar_t__ STACK_SPILL ;
 scalar_t__ STACK_ZERO ;
 int __mark_reg_const_zero (struct bpf_reg_state*) ;
 int mark_reg_read (struct bpf_verifier_env*,struct bpf_reg_state*,int ,int ) ;
 int mark_reg_unknown (struct bpf_verifier_env*,struct bpf_reg_state*,int) ;
 int verbose (struct bpf_verifier_env*,char*,...) ;
 int verbose_linfo (struct bpf_verifier_env*,int ,char*) ;

__attribute__((used)) static int check_stack_read(struct bpf_verifier_env *env,
       struct bpf_func_state *reg_state ,
       int off, int size, int value_regno)
{
 struct bpf_verifier_state *vstate = env->cur_state;
 struct bpf_func_state *state = vstate->frame[vstate->curframe];
 int i, slot = -off - 1, spi = slot / BPF_REG_SIZE;
 struct bpf_reg_state *reg;
 u8 *stype;

 if (reg_state->allocated_stack <= slot) {
  verbose(env, "invalid read from stack off %d+0 size %d\n",
   off, size);
  return -EACCES;
 }
 stype = reg_state->stack[spi].slot_type;
 reg = &reg_state->stack[spi].spilled_ptr;

 if (stype[0] == STACK_SPILL) {
  if (size != BPF_REG_SIZE) {
   if (reg->type != SCALAR_VALUE) {
    verbose_linfo(env, env->insn_idx, "; ");
    verbose(env, "invalid size of register fill\n");
    return -EACCES;
   }
   if (value_regno >= 0) {
    mark_reg_unknown(env, state->regs, value_regno);
    state->regs[value_regno].live |= REG_LIVE_WRITTEN;
   }
   mark_reg_read(env, reg, reg->parent, REG_LIVE_READ64);
   return 0;
  }
  for (i = 1; i < BPF_REG_SIZE; i++) {
   if (stype[(slot - i) % BPF_REG_SIZE] != STACK_SPILL) {
    verbose(env, "corrupted spill memory\n");
    return -EACCES;
   }
  }

  if (value_regno >= 0) {

   state->regs[value_regno] = *reg;




   state->regs[value_regno].live |= REG_LIVE_WRITTEN;
  }
  mark_reg_read(env, reg, reg->parent, REG_LIVE_READ64);
 } else {
  int zeros = 0;

  for (i = 0; i < size; i++) {
   if (stype[(slot - i) % BPF_REG_SIZE] == STACK_MISC)
    continue;
   if (stype[(slot - i) % BPF_REG_SIZE] == STACK_ZERO) {
    zeros++;
    continue;
   }
   verbose(env, "invalid read from stack off %d+%d size %d\n",
    off, i, size);
   return -EACCES;
  }
  mark_reg_read(env, reg, reg->parent, REG_LIVE_READ64);
  if (value_regno >= 0) {
   if (zeros == size) {



    __mark_reg_const_zero(&state->regs[value_regno]);
    state->regs[value_regno].precise = 1;
   } else {

    mark_reg_unknown(env, state->regs, value_regno);
   }
   state->regs[value_regno].live |= REG_LIVE_WRITTEN;
  }
 }
 return 0;
}
