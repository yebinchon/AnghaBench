
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_verifier_env {int dummy; } ;
struct btf_type {int size; } ;


 int BTF_INT_BITS (int) ;
 int BTF_INT_ENCODING (int) ;
 int BTF_INT_OFFSET (int) ;
 int btf_int_encoding_str (int ) ;
 int btf_type_int (struct btf_type const*) ;
 int btf_verifier_log (struct btf_verifier_env*,char*,int ,int ,int ,int ) ;

__attribute__((used)) static void btf_int_log(struct btf_verifier_env *env,
   const struct btf_type *t)
{
 int int_data = btf_type_int(t);

 btf_verifier_log(env,
    "size=%u bits_offset=%u nr_bits=%u encoding=%s",
    t->size, BTF_INT_OFFSET(int_data),
    BTF_INT_BITS(int_data),
    btf_int_encoding_str(BTF_INT_ENCODING(int_data)));
}
