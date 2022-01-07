
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_writer_t ;
typedef int __u8 ;
typedef int __u32 ;


 int BITS_PER_BYTE_MASKED (int) ;
 int BITS_ROUNDDOWN_BYTES (int) ;
 int BTF_INT_BITS (int ) ;
 int BTF_INT_OFFSET (int ) ;
 int btf_dumper_bitfield (int,int,void const*,int *,int) ;

__attribute__((used)) static void btf_dumper_int_bits(__u32 int_type, __u8 bit_offset,
    const void *data, json_writer_t *jw,
    bool is_plain_text)
{
 int nr_bits = BTF_INT_BITS(int_type);
 int total_bits_offset;




 total_bits_offset = bit_offset + BTF_INT_OFFSET(int_type);
 data += BITS_ROUNDDOWN_BYTES(total_bits_offset);
 bit_offset = BITS_PER_BYTE_MASKED(total_bits_offset);
 btf_dumper_bitfield(nr_bits, bit_offset, data, jw,
       is_plain_text);
}
