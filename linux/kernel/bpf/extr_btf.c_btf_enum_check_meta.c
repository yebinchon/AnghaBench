
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct btf_verifier_env {struct btf* btf; } ;
struct btf_type {int size; scalar_t__ name_off; } ;
struct btf_enum {int val; scalar_t__ name_off; } ;
struct btf {int dummy; } ;
typedef int s32 ;


 int EINVAL ;
 int __btf_name_by_offset (struct btf*,scalar_t__) ;
 int btf_name_offset_valid (struct btf*,scalar_t__) ;
 int btf_name_valid_identifier (struct btf*,scalar_t__) ;
 struct btf_enum* btf_type_enum (struct btf_type const*) ;
 scalar_t__ btf_type_kflag (struct btf_type const*) ;
 int btf_type_vlen (struct btf_type const*) ;
 int btf_verifier_log (struct btf_verifier_env*,char*,int ,...) ;
 int btf_verifier_log_basic (struct btf_verifier_env*,struct btf_type const*,char*,int,int) ;
 int btf_verifier_log_type (struct btf_verifier_env*,struct btf_type const*,char*) ;
 int is_power_of_2 (int) ;

__attribute__((used)) static s32 btf_enum_check_meta(struct btf_verifier_env *env,
          const struct btf_type *t,
          u32 meta_left)
{
 const struct btf_enum *enums = btf_type_enum(t);
 struct btf *btf = env->btf;
 u16 i, nr_enums;
 u32 meta_needed;

 nr_enums = btf_type_vlen(t);
 meta_needed = nr_enums * sizeof(*enums);

 if (meta_left < meta_needed) {
  btf_verifier_log_basic(env, t,
           "meta_left:%u meta_needed:%u",
           meta_left, meta_needed);
  return -EINVAL;
 }

 if (btf_type_kflag(t)) {
  btf_verifier_log_type(env, t, "Invalid btf_info kind_flag");
  return -EINVAL;
 }

 if (t->size > 8 || !is_power_of_2(t->size)) {
  btf_verifier_log_type(env, t, "Unexpected size");
  return -EINVAL;
 }


 if (t->name_off &&
     !btf_name_valid_identifier(env->btf, t->name_off)) {
  btf_verifier_log_type(env, t, "Invalid name");
  return -EINVAL;
 }

 btf_verifier_log_type(env, t, ((void*)0));

 for (i = 0; i < nr_enums; i++) {
  if (!btf_name_offset_valid(btf, enums[i].name_off)) {
   btf_verifier_log(env, "\tInvalid name_offset:%u",
      enums[i].name_off);
   return -EINVAL;
  }


  if (!enums[i].name_off ||
      !btf_name_valid_identifier(btf, enums[i].name_off)) {
   btf_verifier_log_type(env, t, "Invalid name");
   return -EINVAL;
  }


  btf_verifier_log(env, "\t%s val=%d\n",
     __btf_name_by_offset(btf, enums[i].name_off),
     enums[i].val);
 }

 return meta_needed;
}
