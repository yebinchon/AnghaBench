
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_verifier_state {scalar_t__ jmp_history_cnt; int * jmp_history; } ;


 int kfree (int *) ;

__attribute__((used)) static void clear_jmp_history(struct bpf_verifier_state *state)
{
 kfree(state->jmp_history);
 state->jmp_history = ((void*)0);
 state->jmp_history_cnt = 0;
}
