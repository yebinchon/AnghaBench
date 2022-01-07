
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct btf_verifier_env {int log_type_id; int phase; struct btf* btf; } ;
struct btf_type {int dummy; } ;
struct btf {int nr_types; } ;


 int btf_func_check (struct btf_verifier_env*,struct btf_type const*) ;
 int btf_func_proto_check (struct btf_verifier_env*,struct btf_type const*) ;
 int btf_resolve (struct btf_verifier_env*,struct btf_type const*,int) ;
 struct btf_type* btf_type_by_id (struct btf*,int) ;
 scalar_t__ btf_type_is_func (struct btf_type const*) ;
 scalar_t__ btf_type_is_func_proto (struct btf_type const*) ;
 scalar_t__ btf_type_needs_resolve (struct btf_type const*) ;
 int env_resolve_init (struct btf_verifier_env*) ;
 int env_type_is_resolved (struct btf_verifier_env*,int) ;

__attribute__((used)) static int btf_check_all_types(struct btf_verifier_env *env)
{
 struct btf *btf = env->btf;
 u32 type_id;
 int err;

 err = env_resolve_init(env);
 if (err)
  return err;

 env->phase++;
 for (type_id = 1; type_id <= btf->nr_types; type_id++) {
  const struct btf_type *t = btf_type_by_id(btf, type_id);

  env->log_type_id = type_id;
  if (btf_type_needs_resolve(t) &&
      !env_type_is_resolved(env, type_id)) {
   err = btf_resolve(env, t, type_id);
   if (err)
    return err;
  }

  if (btf_type_is_func_proto(t)) {
   err = btf_func_proto_check(env, t);
   if (err)
    return err;
  }

  if (btf_type_is_func(t)) {
   err = btf_func_check(env, t);
   if (err)
    return err;
  }
 }

 return 0;
}
