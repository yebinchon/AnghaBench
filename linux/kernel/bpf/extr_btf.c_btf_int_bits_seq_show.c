
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct seq_file {int dummy; } ;
struct btf_type {int dummy; } ;
struct btf {int dummy; } ;


 scalar_t__ BITS_PER_BYTE_MASKED (scalar_t__) ;
 int BITS_ROUNDDOWN_BYTES (scalar_t__) ;
 scalar_t__ BTF_INT_BITS (int ) ;
 scalar_t__ BTF_INT_OFFSET (int ) ;
 int btf_bitfield_seq_show (void*,scalar_t__,scalar_t__,struct seq_file*) ;
 int btf_type_int (struct btf_type const*) ;

__attribute__((used)) static void btf_int_bits_seq_show(const struct btf *btf,
      const struct btf_type *t,
      void *data, u8 bits_offset,
      struct seq_file *m)
{
 u32 int_data = btf_type_int(t);
 u8 nr_bits = BTF_INT_BITS(int_data);
 u8 total_bits_offset;





 total_bits_offset = bits_offset + BTF_INT_OFFSET(int_data);
 data += BITS_ROUNDDOWN_BYTES(total_bits_offset);
 bits_offset = BITS_PER_BYTE_MASKED(total_bits_offset);
 btf_bitfield_seq_show(data, bits_offset, nr_bits, m);
}
