
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_verifier_env {int dummy; } ;
struct bpf_func_state {int callsite; int frameno; int subprogno; } ;


 int init_reg_state (struct bpf_verifier_env*,struct bpf_func_state*) ;

__attribute__((used)) static void init_func_state(struct bpf_verifier_env *env,
       struct bpf_func_state *state,
       int callsite, int frameno, int subprogno)
{
 state->callsite = callsite;
 state->frameno = frameno;
 state->subprogno = subprogno;
 init_reg_state(env, state);
}
