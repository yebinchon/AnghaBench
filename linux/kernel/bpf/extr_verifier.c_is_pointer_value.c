
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_verifier_env {int allow_ptr_leaks; } ;


 int __is_pointer_value (int ,int ) ;
 int reg_state (struct bpf_verifier_env*,int) ;

__attribute__((used)) static bool is_pointer_value(struct bpf_verifier_env *env, int regno)
{
 return __is_pointer_value(env->allow_ptr_leaks, reg_state(env, regno));
}
