
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bpf_verifier_env {int dummy; } ;
struct bpf_func_state {int acquired_refs; TYPE_1__* refs; } ;
struct TYPE_2__ {int insn_idx; int id; } ;


 int EINVAL ;
 struct bpf_func_state* cur_func (struct bpf_verifier_env*) ;
 int verbose (struct bpf_verifier_env*,char*,int ,int ) ;

__attribute__((used)) static int check_reference_leak(struct bpf_verifier_env *env)
{
 struct bpf_func_state *state = cur_func(env);
 int i;

 for (i = 0; i < state->acquired_refs; i++) {
  verbose(env, "Unreleased reference id=%d alloc_insn=%d\n",
   state->refs[i].id, state->refs[i].insn_idx);
 }
 return state->acquired_refs ? -EINVAL : 0;
}
