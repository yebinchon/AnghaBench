
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btf_verifier_env {int dummy; } ;
struct btf_type {int dummy; } ;
struct btf_member {int offset; } ;
struct TYPE_2__ {int (* check_member ) (struct btf_verifier_env*,struct btf_type const*,struct btf_member const*,struct btf_type const*) ;} ;


 scalar_t__ BTF_MEMBER_BITFIELD_SIZE (int ) ;
 int EINVAL ;
 TYPE_1__* btf_type_ops (struct btf_type const*) ;
 int btf_verifier_log_member (struct btf_verifier_env*,struct btf_type const*,struct btf_member const*,char*) ;
 int stub1 (struct btf_verifier_env*,struct btf_type const*,struct btf_member const*,struct btf_type const*) ;

__attribute__((used)) static int btf_generic_check_kflag_member(struct btf_verifier_env *env,
       const struct btf_type *struct_type,
       const struct btf_member *member,
       const struct btf_type *member_type)
{
 if (BTF_MEMBER_BITFIELD_SIZE(member->offset)) {
  btf_verifier_log_member(env, struct_type, member,
     "Invalid member bitfield_size");
  return -EINVAL;
 }




 return btf_type_ops(member_type)->check_member(env, struct_type,
             member,
             member_type);
}
