
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bpf_verifier_env {int id_gen; } ;
struct bpf_func_state {int acquired_refs; TYPE_1__* refs; } ;
struct TYPE_2__ {int id; int insn_idx; } ;


 struct bpf_func_state* cur_func (struct bpf_verifier_env*) ;
 int realloc_reference_state (struct bpf_func_state*,int,int) ;

__attribute__((used)) static int acquire_reference_state(struct bpf_verifier_env *env, int insn_idx)
{
 struct bpf_func_state *state = cur_func(env);
 int new_ofs = state->acquired_refs;
 int id, err;

 err = realloc_reference_state(state, state->acquired_refs + 1, 1);
 if (err)
  return err;
 id = ++env->id_gen;
 state->refs[new_ofs].id = id;
 state->refs[new_ofs].insn_idx = insn_idx;

 return id;
}
