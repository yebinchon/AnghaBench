
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct btf_type {int dummy; } ;
struct btf_member {scalar_t__ type; scalar_t__ offset; } ;
struct btf {int dummy; } ;


 scalar_t__ BITS_PER_BYTE_MASKED (scalar_t__) ;
 scalar_t__ BITS_ROUNDUP_BYTES (scalar_t__) ;
 scalar_t__ BTF_INT_BITS (scalar_t__) ;
 scalar_t__ BTF_INT_OFFSET (scalar_t__) ;
 scalar_t__ BTF_MEMBER_BITFIELD_SIZE (scalar_t__) ;
 scalar_t__ BTF_MEMBER_BIT_OFFSET (scalar_t__) ;
 struct btf_type* btf_type_id_size (struct btf const*,scalar_t__*,int *) ;
 scalar_t__ btf_type_int (struct btf_type const*) ;
 int btf_type_is_int (struct btf_type const*) ;
 scalar_t__ btf_type_kflag (struct btf_type const*) ;

bool btf_member_is_reg_int(const struct btf *btf, const struct btf_type *s,
      const struct btf_member *m,
      u32 expected_offset, u32 expected_size)
{
 const struct btf_type *t;
 u32 id, int_data;
 u8 nr_bits;

 id = m->type;
 t = btf_type_id_size(btf, &id, ((void*)0));
 if (!t || !btf_type_is_int(t))
  return 0;

 int_data = btf_type_int(t);
 nr_bits = BTF_INT_BITS(int_data);
 if (btf_type_kflag(s)) {
  u32 bitfield_size = BTF_MEMBER_BITFIELD_SIZE(m->offset);
  u32 bit_offset = BTF_MEMBER_BIT_OFFSET(m->offset);




  return !bitfield_size &&
         BITS_ROUNDUP_BYTES(bit_offset) == expected_offset &&
         BITS_ROUNDUP_BYTES(nr_bits) == expected_size;
 }

 if (BTF_INT_OFFSET(int_data) ||
     BITS_PER_BYTE_MASKED(m->offset) ||
     BITS_ROUNDUP_BYTES(m->offset) != expected_offset ||
     BITS_PER_BYTE_MASKED(nr_bits) ||
     BITS_ROUNDUP_BYTES(nr_bits) != expected_size)
  return 0;

 return 1;
}
