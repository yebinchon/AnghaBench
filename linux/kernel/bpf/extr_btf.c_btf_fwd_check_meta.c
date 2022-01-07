
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct btf_verifier_env {int btf; } ;
struct btf_type {int name_off; scalar_t__ type; } ;
typedef int s32 ;


 int EINVAL ;
 int btf_name_valid_identifier (int ,int ) ;
 scalar_t__ btf_type_vlen (struct btf_type const*) ;
 int btf_verifier_log_type (struct btf_verifier_env*,struct btf_type const*,char*) ;

__attribute__((used)) static s32 btf_fwd_check_meta(struct btf_verifier_env *env,
         const struct btf_type *t,
         u32 meta_left)
{
 if (btf_type_vlen(t)) {
  btf_verifier_log_type(env, t, "vlen != 0");
  return -EINVAL;
 }

 if (t->type) {
  btf_verifier_log_type(env, t, "type != 0");
  return -EINVAL;
 }


 if (!t->name_off ||
     !btf_name_valid_identifier(env->btf, t->name_off)) {
  btf_verifier_log_type(env, t, "Invalid name");
  return -EINVAL;
 }

 btf_verifier_log_type(env, t, ((void*)0));

 return 0;
}
