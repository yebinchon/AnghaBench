
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_type {int dummy; } ;
typedef int json_writer_t ;
typedef char __u8 ;
typedef char __u64 ;
typedef int __u32 ;
typedef char __u16 ;


 scalar_t__ BITS_PER_BYTE_MASKED (int) ;
 int BTF_INT_BITS (int) ;


 int BTF_INT_ENCODING (int) ;
 scalar_t__ BTF_INT_OFFSET (int) ;

 int EINVAL ;
 int btf_dumper_int_bits (int,char,void const*,int *,int) ;
 int btf_int128_print (int *,void const*,int) ;
 int isprint (char) ;
 int jsonw_bool (int *,int) ;
 int jsonw_printf (int *,char*,char) ;

__attribute__((used)) static int btf_dumper_int(const struct btf_type *t, __u8 bit_offset,
     const void *data, json_writer_t *jw,
     bool is_plain_text)
{
 __u32 *int_type;
 __u32 nr_bits;

 int_type = (__u32 *)(t + 1);
 nr_bits = BTF_INT_BITS(*int_type);

 if (bit_offset || BTF_INT_OFFSET(*int_type) ||
     BITS_PER_BYTE_MASKED(nr_bits)) {
  btf_dumper_int_bits(*int_type, bit_offset, data, jw,
        is_plain_text);
  return 0;
 }

 if (nr_bits == 128) {
  btf_int128_print(jw, data, is_plain_text);
  return 0;
 }

 switch (BTF_INT_ENCODING(*int_type)) {
 case 0:
  if (BTF_INT_BITS(*int_type) == 64)
   jsonw_printf(jw, "%llu", *(__u64 *)data);
  else if (BTF_INT_BITS(*int_type) == 32)
   jsonw_printf(jw, "%u", *(__u32 *)data);
  else if (BTF_INT_BITS(*int_type) == 16)
   jsonw_printf(jw, "%hu", *(__u16 *)data);
  else if (BTF_INT_BITS(*int_type) == 8)
   jsonw_printf(jw, "%hhu", *(__u8 *)data);
  else
   btf_dumper_int_bits(*int_type, bit_offset, data, jw,
         is_plain_text);
  break;
 case 128:
  if (BTF_INT_BITS(*int_type) == 64)
   jsonw_printf(jw, "%lld", *(long long *)data);
  else if (BTF_INT_BITS(*int_type) == 32)
   jsonw_printf(jw, "%d", *(int *)data);
  else if (BTF_INT_BITS(*int_type) == 16)
   jsonw_printf(jw, "%hd", *(short *)data);
  else if (BTF_INT_BITS(*int_type) == 8)
   jsonw_printf(jw, "%hhd", *(char *)data);
  else
   btf_dumper_int_bits(*int_type, bit_offset, data, jw,
         is_plain_text);
  break;
 case 129:
  if (isprint(*(char *)data))
   jsonw_printf(jw, "\"%c\"", *(char *)data);
  else
   if (is_plain_text)
    jsonw_printf(jw, "0x%hhx", *(char *)data);
   else
    jsonw_printf(jw, "\"\\u00%02hhx\"",
          *(char *)data);
  break;
 case 130:
  jsonw_bool(jw, *(int *)data);
  break;
 default:

  return -EINVAL;
 }

 return 0;
}
