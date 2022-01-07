
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct tep_format_field {int offset; int size; } ;
struct perf_sample {void* raw_data; } ;


 int bswap_16 (int ) ;
 int bswap_32 (int ) ;
 int bswap_64 (int ) ;
 int memcpy (int *,void*,int) ;

u64 format_field__intval(struct tep_format_field *field, struct perf_sample *sample,
    bool needs_swap)
{
 u64 value;
 void *ptr = sample->raw_data + field->offset;

 switch (field->size) {
 case 1:
  return *(u8 *)ptr;
 case 2:
  value = *(u16 *)ptr;
  break;
 case 4:
  value = *(u32 *)ptr;
  break;
 case 8:
  memcpy(&value, ptr, sizeof(u64));
  break;
 default:
  return 0;
 }

 if (!needs_swap)
  return value;

 switch (field->size) {
 case 2:
  return bswap_16(value);
 case 4:
  return bswap_32(value);
 case 8:
  return bswap_64(value);
 default:
  return 0;
 }

 return 0;
}
