
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_verifier_state {int curframe; int * frame; } ;
struct bpf_verifier_env {struct bpf_verifier_state* cur_state; } ;


 int __clear_all_pkt_pointers (struct bpf_verifier_env*,int ) ;

__attribute__((used)) static void clear_all_pkt_pointers(struct bpf_verifier_env *env)
{
 struct bpf_verifier_state *vstate = env->cur_state;
 int i;

 for (i = 0; i <= vstate->curframe; i++)
  __clear_all_pkt_pointers(env, vstate->frame[i]);
}
