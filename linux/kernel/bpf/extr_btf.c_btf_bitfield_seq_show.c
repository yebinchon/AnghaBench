
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u64 ;
typedef scalar_t__ u16 ;
struct seq_file {int dummy; } ;


 scalar_t__ BITS_PER_U128 ;
 scalar_t__ BITS_ROUNDUP_BYTES (scalar_t__) ;
 int btf_int128_print (struct seq_file*,int *) ;
 int btf_int128_shift (int *,scalar_t__,scalar_t__) ;
 int memcpy (int *,void*,scalar_t__) ;

__attribute__((used)) static void btf_bitfield_seq_show(void *data, u8 bits_offset,
      u8 nr_bits, struct seq_file *m)
{
 u16 left_shift_bits, right_shift_bits;
 u8 nr_copy_bytes;
 u8 nr_copy_bits;
 u64 print_num[2] = {};

 nr_copy_bits = nr_bits + bits_offset;
 nr_copy_bytes = BITS_ROUNDUP_BYTES(nr_copy_bits);

 memcpy(print_num, data, nr_copy_bytes);




 left_shift_bits = BITS_PER_U128 - nr_copy_bits;

 right_shift_bits = BITS_PER_U128 - nr_bits;

 btf_int128_shift(print_num, left_shift_bits, right_shift_bits);
 btf_int128_print(m, print_num);
}
