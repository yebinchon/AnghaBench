
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct btf_verifier_env {int dummy; } ;
struct btf_type {scalar_t__ size; } ;
struct btf_member {scalar_t__ offset; } ;


 scalar_t__ BITS_PER_BYTE_MASKED (scalar_t__) ;
 scalar_t__ BITS_PER_U128 ;
 scalar_t__ BITS_ROUNDDOWN_BYTES (scalar_t__) ;
 scalar_t__ BITS_ROUNDUP_BYTES (scalar_t__) ;
 scalar_t__ BTF_INT_BITS (scalar_t__) ;
 scalar_t__ BTF_INT_OFFSET (scalar_t__) ;
 int EINVAL ;
 scalar_t__ U32_MAX ;
 scalar_t__ btf_type_int (struct btf_type const*) ;
 int btf_verifier_log_member (struct btf_verifier_env*,struct btf_type const*,struct btf_member const*,char*) ;

__attribute__((used)) static int btf_int_check_member(struct btf_verifier_env *env,
    const struct btf_type *struct_type,
    const struct btf_member *member,
    const struct btf_type *member_type)
{
 u32 int_data = btf_type_int(member_type);
 u32 struct_bits_off = member->offset;
 u32 struct_size = struct_type->size;
 u32 nr_copy_bits;
 u32 bytes_offset;

 if (U32_MAX - struct_bits_off < BTF_INT_OFFSET(int_data)) {
  btf_verifier_log_member(env, struct_type, member,
     "bits_offset exceeds U32_MAX");
  return -EINVAL;
 }

 struct_bits_off += BTF_INT_OFFSET(int_data);
 bytes_offset = BITS_ROUNDDOWN_BYTES(struct_bits_off);
 nr_copy_bits = BTF_INT_BITS(int_data) +
  BITS_PER_BYTE_MASKED(struct_bits_off);

 if (nr_copy_bits > BITS_PER_U128) {
  btf_verifier_log_member(env, struct_type, member,
     "nr_copy_bits exceeds 128");
  return -EINVAL;
 }

 if (struct_size < bytes_offset ||
     struct_size - bytes_offset < BITS_ROUNDUP_BYTES(nr_copy_bits)) {
  btf_verifier_log_member(env, struct_type, member,
     "Member exceeds struct_size");
  return -EINVAL;
 }

 return 0;
}
