
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_verifier_state {int curframe; int ** frame; } ;


 int clear_jmp_history (struct bpf_verifier_state*) ;
 int free_func_state (int *) ;
 int kfree (struct bpf_verifier_state*) ;

__attribute__((used)) static void free_verifier_state(struct bpf_verifier_state *state,
    bool free_self)
{
 int i;

 for (i = 0; i <= state->curframe; i++) {
  free_func_state(state->frame[i]);
  state->frame[i] = ((void*)0);
 }
 clear_jmp_history(state);
 if (free_self)
  kfree(state);
}
