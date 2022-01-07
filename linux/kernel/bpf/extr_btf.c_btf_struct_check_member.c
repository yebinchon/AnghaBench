
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct btf_verifier_env {int dummy; } ;
struct btf_type {scalar_t__ size; } ;
struct btf_member {scalar_t__ offset; } ;


 scalar_t__ BITS_PER_BYTE_MASKED (scalar_t__) ;
 scalar_t__ BITS_ROUNDDOWN_BYTES (scalar_t__) ;
 int EINVAL ;
 int btf_verifier_log_member (struct btf_verifier_env*,struct btf_type const*,struct btf_member const*,char*) ;

__attribute__((used)) static int btf_struct_check_member(struct btf_verifier_env *env,
       const struct btf_type *struct_type,
       const struct btf_member *member,
       const struct btf_type *member_type)
{
 u32 struct_bits_off = member->offset;
 u32 struct_size, bytes_offset;

 if (BITS_PER_BYTE_MASKED(struct_bits_off)) {
  btf_verifier_log_member(env, struct_type, member,
     "Member is not byte aligned");
  return -EINVAL;
 }

 struct_size = struct_type->size;
 bytes_offset = BITS_ROUNDDOWN_BYTES(struct_bits_off);
 if (struct_size - bytes_offset < member_type->size) {
  btf_verifier_log_member(env, struct_type, member,
     "Member exceeds struct_size");
  return -EINVAL;
 }

 return 0;
}
