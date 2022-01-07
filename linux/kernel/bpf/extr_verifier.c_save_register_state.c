
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bpf_reg_state {int live; } ;
struct bpf_func_state {TYPE_1__* stack; } ;
struct TYPE_2__ {int * slot_type; struct bpf_reg_state spilled_ptr; } ;


 int BPF_REG_SIZE ;
 int REG_LIVE_WRITTEN ;
 int STACK_SPILL ;

__attribute__((used)) static void save_register_state(struct bpf_func_state *state,
    int spi, struct bpf_reg_state *reg)
{
 int i;

 state->stack[spi].spilled_ptr = *reg;
 state->stack[spi].spilled_ptr.live |= REG_LIVE_WRITTEN;

 for (i = 0; i < BPF_REG_SIZE; i++)
  state->stack[spi].slot_type[i] = STACK_SPILL;
}
