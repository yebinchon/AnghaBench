
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct btf_verifier_env {int dummy; } ;
struct btf_type {scalar_t__ size; } ;
typedef scalar_t__ s32 ;
typedef int int_data ;


 scalar_t__ BITS_PER_U128 ;
 scalar_t__ BITS_ROUNDUP_BYTES (scalar_t__) ;
 scalar_t__ BTF_INT_BITS (scalar_t__) ;
 scalar_t__ BTF_INT_BOOL ;
 scalar_t__ BTF_INT_CHAR ;
 scalar_t__ BTF_INT_ENCODING (scalar_t__) ;
 scalar_t__ BTF_INT_MASK ;
 scalar_t__ BTF_INT_OFFSET (scalar_t__) ;
 scalar_t__ BTF_INT_SIGNED ;
 scalar_t__ EINVAL ;
 scalar_t__ ENOTSUPP ;
 scalar_t__ btf_type_int (struct btf_type const*) ;
 scalar_t__ btf_type_kflag (struct btf_type const*) ;
 scalar_t__ btf_type_vlen (struct btf_type const*) ;
 int btf_verifier_log_basic (struct btf_verifier_env*,struct btf_type const*,char*,scalar_t__,...) ;
 int btf_verifier_log_type (struct btf_verifier_env*,struct btf_type const*,char*,...) ;

__attribute__((used)) static s32 btf_int_check_meta(struct btf_verifier_env *env,
         const struct btf_type *t,
         u32 meta_left)
{
 u32 int_data, nr_bits, meta_needed = sizeof(int_data);
 u16 encoding;

 if (meta_left < meta_needed) {
  btf_verifier_log_basic(env, t,
           "meta_left:%u meta_needed:%u",
           meta_left, meta_needed);
  return -EINVAL;
 }

 if (btf_type_vlen(t)) {
  btf_verifier_log_type(env, t, "vlen != 0");
  return -EINVAL;
 }

 if (btf_type_kflag(t)) {
  btf_verifier_log_type(env, t, "Invalid btf_info kind_flag");
  return -EINVAL;
 }

 int_data = btf_type_int(t);
 if (int_data & ~BTF_INT_MASK) {
  btf_verifier_log_basic(env, t, "Invalid int_data:%x",
           int_data);
  return -EINVAL;
 }

 nr_bits = BTF_INT_BITS(int_data) + BTF_INT_OFFSET(int_data);

 if (nr_bits > BITS_PER_U128) {
  btf_verifier_log_type(env, t, "nr_bits exceeds %zu",
          BITS_PER_U128);
  return -EINVAL;
 }

 if (BITS_ROUNDUP_BYTES(nr_bits) > t->size) {
  btf_verifier_log_type(env, t, "nr_bits exceeds type_size");
  return -EINVAL;
 }







 encoding = BTF_INT_ENCODING(int_data);
 if (encoding &&
     encoding != BTF_INT_SIGNED &&
     encoding != BTF_INT_CHAR &&
     encoding != BTF_INT_BOOL) {
  btf_verifier_log_type(env, t, "Unsupported encoding");
  return -ENOTSUPP;
 }

 btf_verifier_log_type(env, t, ((void*)0));

 return meta_needed;
}
