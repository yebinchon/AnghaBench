
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct btf_type {int dummy; } ;


 scalar_t__ BITS_PER_BYTE_MASKED (int) ;
 int BITS_ROUNDUP_BYTES (int) ;
 int BTF_INT_BITS (int ) ;
 scalar_t__ BTF_INT_OFFSET (int ) ;
 int btf_type_int (struct btf_type const*) ;

__attribute__((used)) static bool btf_type_int_is_regular(const struct btf_type *t)
{
 u8 nr_bits, nr_bytes;
 u32 int_data;

 int_data = btf_type_int(t);
 nr_bits = BTF_INT_BITS(int_data);
 nr_bytes = BITS_ROUNDUP_BYTES(nr_bits);
 if (BITS_PER_BYTE_MASKED(nr_bits) ||
     BTF_INT_OFFSET(int_data) ||
     (nr_bytes != sizeof(u8) && nr_bytes != sizeof(u16) &&
      nr_bytes != sizeof(u32) && nr_bytes != sizeof(u64) &&
      nr_bytes != (2 * sizeof(u64)))) {
  return 0;
 }

 return 1;
}
