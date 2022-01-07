
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_verifier_env {int dummy; } ;
struct bpf_reg_state {int type; } ;


 struct bpf_reg_state* reg_state (struct bpf_verifier_env*,int) ;
 int type_is_sk_pointer (int ) ;

__attribute__((used)) static bool is_sk_reg(struct bpf_verifier_env *env, int regno)
{
 const struct bpf_reg_state *reg = reg_state(env, regno);

 return type_is_sk_pointer(reg->type);
}
