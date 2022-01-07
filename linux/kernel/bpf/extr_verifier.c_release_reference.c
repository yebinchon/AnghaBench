
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_verifier_state {int curframe; int * frame; } ;
struct bpf_verifier_env {struct bpf_verifier_state* cur_state; } ;


 int cur_func (struct bpf_verifier_env*) ;
 int release_reference_state (int ,int) ;
 int release_reg_references (struct bpf_verifier_env*,int ,int) ;

__attribute__((used)) static int release_reference(struct bpf_verifier_env *env,
        int ref_obj_id)
{
 struct bpf_verifier_state *vstate = env->cur_state;
 int err;
 int i;

 err = release_reference_state(cur_func(env), ref_obj_id);
 if (err)
  return err;

 for (i = 0; i <= vstate->curframe; i++)
  release_reg_references(env, vstate->frame[i], ref_obj_id);

 return 0;
}
