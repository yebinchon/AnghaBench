
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_verifier_env {int dummy; } ;
struct bpf_reg_state {scalar_t__ type; } ;


 scalar_t__ PTR_TO_CTX ;
 struct bpf_reg_state* reg_state (struct bpf_verifier_env*,int) ;

__attribute__((used)) static bool is_ctx_reg(struct bpf_verifier_env *env, int regno)
{
 const struct bpf_reg_state *reg = reg_state(env, regno);

 return reg->type == PTR_TO_CTX;
}
