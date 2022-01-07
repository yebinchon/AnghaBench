
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_verifier_env {int dummy; } ;
struct btf_type {int dummy; } ;
struct btf_member {int dummy; } ;


 int EINVAL ;
 int btf_verifier_log_basic (struct btf_verifier_env*,struct btf_type const*,char*) ;

__attribute__((used)) static int btf_df_check_kflag_member(struct btf_verifier_env *env,
         const struct btf_type *struct_type,
         const struct btf_member *member,
         const struct btf_type *member_type)
{
 btf_verifier_log_basic(env, struct_type,
          "Unsupported check_kflag_member");
 return -EINVAL;
}
