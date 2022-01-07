
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bpf_verifier_env {int dummy; } ;
struct bpf_func_state {int allocated_stack; TYPE_1__* stack; TYPE_2__* regs; } ;
typedef enum bpf_reg_liveness { ____Placeholder_bpf_reg_liveness } bpf_reg_liveness ;
struct TYPE_4__ {int live; } ;
struct TYPE_3__ {int * slot_type; TYPE_2__ spilled_ptr; } ;


 int BPF_REG_FP ;
 int BPF_REG_SIZE ;
 int REG_LIVE_DONE ;
 int REG_LIVE_READ ;
 int STACK_INVALID ;
 int __mark_reg_not_init (TYPE_2__*) ;

__attribute__((used)) static void clean_func_state(struct bpf_verifier_env *env,
        struct bpf_func_state *st)
{
 enum bpf_reg_liveness live;
 int i, j;

 for (i = 0; i < BPF_REG_FP; i++) {
  live = st->regs[i].live;

  st->regs[i].live |= REG_LIVE_DONE;
  if (!(live & REG_LIVE_READ))



   __mark_reg_not_init(&st->regs[i]);
 }

 for (i = 0; i < st->allocated_stack / BPF_REG_SIZE; i++) {
  live = st->stack[i].spilled_ptr.live;

  st->stack[i].spilled_ptr.live |= REG_LIVE_DONE;
  if (!(live & REG_LIVE_READ)) {
   __mark_reg_not_init(&st->stack[i].spilled_ptr);
   for (j = 0; j < BPF_REG_SIZE; j++)
    st->stack[i].slot_type[j] = STACK_INVALID;
  }
 }
}
