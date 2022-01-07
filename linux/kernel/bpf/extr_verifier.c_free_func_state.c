
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_func_state {struct bpf_func_state* stack; struct bpf_func_state* refs; } ;


 int kfree (struct bpf_func_state*) ;

__attribute__((used)) static void free_func_state(struct bpf_func_state *state)
{
 if (!state)
  return;
 kfree(state->refs);
 kfree(state->stack);
 kfree(state);
}
