
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_verifier_env {int dummy; } ;
struct bpf_reg_state {int dummy; } ;


 struct bpf_reg_state* cur_regs (struct bpf_verifier_env*) ;

__attribute__((used)) static struct bpf_reg_state *reg_state(struct bpf_verifier_env *env, int regno)
{
 return cur_regs(env) + regno;
}
