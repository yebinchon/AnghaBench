
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct btf_verifier_env {scalar_t__* visit_states; } ;


 scalar_t__ RESOLVED ;

__attribute__((used)) static bool env_type_is_resolved(const struct btf_verifier_env *env,
     u32 type_id)
{
 return env->visit_states[type_id] == RESOLVED;
}
