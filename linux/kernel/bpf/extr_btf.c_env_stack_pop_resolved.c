
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct btf_verifier_env {size_t top_stack; int * visit_states; struct btf* btf; TYPE_1__* stack; } ;
struct btf {size_t* resolved_sizes; size_t* resolved_ids; } ;
struct TYPE_2__ {size_t type_id; } ;


 int RESOLVED ;

__attribute__((used)) static void env_stack_pop_resolved(struct btf_verifier_env *env,
       u32 resolved_type_id,
       u32 resolved_size)
{
 u32 type_id = env->stack[--(env->top_stack)].type_id;
 struct btf *btf = env->btf;

 btf->resolved_sizes[type_id] = resolved_size;
 btf->resolved_ids[type_id] = resolved_type_id;
 env->visit_states[type_id] = RESOLVED;
}
