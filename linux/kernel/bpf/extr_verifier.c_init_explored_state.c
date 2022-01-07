
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bpf_verifier_env {TYPE_1__* insn_aux_data; } ;
struct TYPE_2__ {int prune_point; } ;



__attribute__((used)) static void init_explored_state(struct bpf_verifier_env *env, int idx)
{
 env->insn_aux_data[idx].prune_point = 1;
}
