
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct bpf_verifier_env {TYPE_4__* insn_aux_data; scalar_t__ allow_ptr_leaks; TYPE_3__* cur_state; TYPE_2__* prog; } ;
struct bpf_reg_state {scalar_t__ type; int live; } ;
struct bpf_func_state {TYPE_5__* stack; struct bpf_reg_state* regs; int acquired_refs; } ;
struct TYPE_10__ {scalar_t__* slot_type; struct bpf_reg_state spilled_ptr; } ;
struct TYPE_9__ {int sanitize_stack_off; } ;
struct TYPE_8__ {size_t curframe; struct bpf_func_state** frame; } ;
struct TYPE_7__ {TYPE_1__* insnsi; } ;
struct TYPE_6__ {scalar_t__ dst_reg; } ;


 scalar_t__ BPF_REG_FP ;
 int BPF_REG_SIZE ;
 int EACCES ;
 int EINVAL ;
 scalar_t__ NOT_INIT ;
 scalar_t__ PTR_TO_STACK ;
 int REG_LIVE_WRITTEN ;
 scalar_t__ STACK_MISC ;
 scalar_t__ STACK_SPILL ;
 scalar_t__ STACK_ZERO ;
 scalar_t__ is_spillable_regtype (scalar_t__) ;
 int mark_chain_precision (struct bpf_verifier_env*,int) ;
 int realloc_func_state (struct bpf_func_state*,int ,int ,int) ;
 scalar_t__ register_is_const (struct bpf_reg_state*) ;
 scalar_t__ register_is_null (struct bpf_reg_state*) ;
 int round_up (int,int) ;
 int save_register_state (struct bpf_func_state*,int,struct bpf_reg_state*) ;
 int verbose (struct bpf_verifier_env*,char*,...) ;
 int verbose_linfo (struct bpf_verifier_env*,int,char*) ;

__attribute__((used)) static int check_stack_write(struct bpf_verifier_env *env,
        struct bpf_func_state *state,
        int off, int size, int value_regno, int insn_idx)
{
 struct bpf_func_state *cur;
 int i, slot = -off - 1, spi = slot / BPF_REG_SIZE, err;
 u32 dst_reg = env->prog->insnsi[insn_idx].dst_reg;
 struct bpf_reg_state *reg = ((void*)0);

 err = realloc_func_state(state, round_up(slot + 1, BPF_REG_SIZE),
     state->acquired_refs, 1);
 if (err)
  return err;



 if (!env->allow_ptr_leaks &&
     state->stack[spi].slot_type[0] == STACK_SPILL &&
     size != BPF_REG_SIZE) {
  verbose(env, "attempt to corrupt spilled pointer on stack\n");
  return -EACCES;
 }

 cur = env->cur_state->frame[env->cur_state->curframe];
 if (value_regno >= 0)
  reg = &cur->regs[value_regno];

 if (reg && size == BPF_REG_SIZE && register_is_const(reg) &&
     !register_is_null(reg) && env->allow_ptr_leaks) {
  if (dst_reg != BPF_REG_FP) {






   err = mark_chain_precision(env, value_regno);
   if (err)
    return err;
  }
  save_register_state(state, spi, reg);
 } else if (reg && is_spillable_regtype(reg->type)) {

  if (size != BPF_REG_SIZE) {
   verbose_linfo(env, insn_idx, "; ");
   verbose(env, "invalid size of register spill\n");
   return -EACCES;
  }

  if (state != cur && reg->type == PTR_TO_STACK) {
   verbose(env, "cannot spill pointers to stack into stack frame of the caller\n");
   return -EINVAL;
  }

  if (!env->allow_ptr_leaks) {
   bool sanitize = 0;

   if (state->stack[spi].slot_type[0] == STACK_SPILL &&
       register_is_const(&state->stack[spi].spilled_ptr))
    sanitize = 1;
   for (i = 0; i < BPF_REG_SIZE; i++)
    if (state->stack[spi].slot_type[i] == STACK_MISC) {
     sanitize = 1;
     break;
    }
   if (sanitize) {
    int *poff = &env->insn_aux_data[insn_idx].sanitize_stack_off;
    int soff = (-spi - 1) * BPF_REG_SIZE;
    if (*poff && *poff != soff) {




     verbose(env,
      "insn %d cannot access two stack slots fp%d and fp%d",
      insn_idx, *poff, soff);
     return -EINVAL;
    }
    *poff = soff;
   }
  }
  save_register_state(state, spi, reg);
 } else {
  u8 type = STACK_MISC;


  state->stack[spi].spilled_ptr.type = NOT_INIT;

  if (state->stack[spi].slot_type[0] == STACK_SPILL)
   for (i = 0; i < BPF_REG_SIZE; i++)
    state->stack[spi].slot_type[i] = STACK_MISC;
  if (size == BPF_REG_SIZE)
   state->stack[spi].spilled_ptr.live |= REG_LIVE_WRITTEN;


  if (reg && register_is_null(reg)) {

   err = mark_chain_precision(env, value_regno);
   if (err)
    return err;
   type = STACK_ZERO;
  }


  for (i = 0; i < size; i++)
   state->stack[spi].slot_type[(slot - i) % BPF_REG_SIZE] =
    type;
 }
 return 0;
}
