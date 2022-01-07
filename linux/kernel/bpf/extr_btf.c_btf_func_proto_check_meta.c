
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct btf_verifier_env {int dummy; } ;
struct btf_type {scalar_t__ name_off; } ;
struct btf_param {int dummy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ EINVAL ;
 scalar_t__ btf_type_kflag (struct btf_type const*) ;
 int btf_type_vlen (struct btf_type const*) ;
 int btf_verifier_log_basic (struct btf_verifier_env*,struct btf_type const*,char*,scalar_t__,scalar_t__) ;
 int btf_verifier_log_type (struct btf_verifier_env*,struct btf_type const*,char*) ;

__attribute__((used)) static s32 btf_func_proto_check_meta(struct btf_verifier_env *env,
         const struct btf_type *t,
         u32 meta_left)
{
 u32 meta_needed = btf_type_vlen(t) * sizeof(struct btf_param);

 if (meta_left < meta_needed) {
  btf_verifier_log_basic(env, t,
           "meta_left:%u meta_needed:%u",
           meta_left, meta_needed);
  return -EINVAL;
 }

 if (t->name_off) {
  btf_verifier_log_type(env, t, "Invalid name");
  return -EINVAL;
 }

 if (btf_type_kflag(t)) {
  btf_verifier_log_type(env, t, "Invalid btf_info kind_flag");
  return -EINVAL;
 }

 btf_verifier_log_type(env, t, ((void*)0));

 return meta_needed;
}
