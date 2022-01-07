
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct resolve_vertex {struct btf_type* t; } ;
struct btf_verifier_env {struct btf* btf; } ;
struct btf_type {int type; } ;
struct btf {int dummy; } ;


 int EINVAL ;
 struct btf_type* btf_type_by_id (struct btf*,int ) ;
 struct btf_type* btf_type_id_resolve (struct btf*,int *) ;
 int btf_type_id_size (struct btf*,int *,int *) ;
 int btf_type_is_func_proto (struct btf_type const*) ;
 int btf_type_is_fwd (struct btf_type const*) ;
 scalar_t__ btf_type_is_modifier (struct btf_type const*) ;
 scalar_t__ btf_type_is_ptr (struct btf_type const*) ;
 scalar_t__ btf_type_is_resolve_source_only (struct btf_type const*) ;
 int btf_type_is_void (struct btf_type const*) ;
 int btf_verifier_log_type (struct btf_verifier_env*,struct btf_type*,char*) ;
 int env_stack_pop_resolved (struct btf_verifier_env*,int ,int ) ;
 int env_stack_push (struct btf_verifier_env*,struct btf_type const*,int ) ;
 int env_type_is_resolve_sink (struct btf_verifier_env*,struct btf_type const*) ;
 scalar_t__ env_type_is_resolved (struct btf_verifier_env*,int ) ;

__attribute__((used)) static int btf_ptr_resolve(struct btf_verifier_env *env,
      const struct resolve_vertex *v)
{
 const struct btf_type *next_type;
 const struct btf_type *t = v->t;
 u32 next_type_id = t->type;
 struct btf *btf = env->btf;

 next_type = btf_type_by_id(btf, next_type_id);
 if (!next_type || btf_type_is_resolve_source_only(next_type)) {
  btf_verifier_log_type(env, v->t, "Invalid type_id");
  return -EINVAL;
 }

 if (!env_type_is_resolve_sink(env, next_type) &&
     !env_type_is_resolved(env, next_type_id))
  return env_stack_push(env, next_type, next_type_id);
 if (btf_type_is_modifier(next_type)) {
  const struct btf_type *resolved_type;
  u32 resolved_type_id;

  resolved_type_id = next_type_id;
  resolved_type = btf_type_id_resolve(btf, &resolved_type_id);

  if (btf_type_is_ptr(resolved_type) &&
      !env_type_is_resolve_sink(env, resolved_type) &&
      !env_type_is_resolved(env, resolved_type_id))
   return env_stack_push(env, resolved_type,
           resolved_type_id);
 }

 if (!btf_type_id_size(btf, &next_type_id, ((void*)0))) {
  if (env_type_is_resolved(env, next_type_id))
   next_type = btf_type_id_resolve(btf, &next_type_id);

  if (!btf_type_is_void(next_type) &&
      !btf_type_is_fwd(next_type) &&
      !btf_type_is_func_proto(next_type)) {
   btf_verifier_log_type(env, v->t, "Invalid type_id");
   return -EINVAL;
  }
 }

 env_stack_pop_resolved(env, next_type_id, 0);

 return 0;
}
