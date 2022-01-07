
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tracing_map_cmp_fn_t ;


 int tracing_map_cmp_none ;
 int tracing_map_cmp_s16 ;
 int tracing_map_cmp_s32 ;
 int tracing_map_cmp_s64 ;
 int tracing_map_cmp_s8 ;
 int tracing_map_cmp_u16 ;
 int tracing_map_cmp_u32 ;
 int tracing_map_cmp_u64 ;
 int tracing_map_cmp_u8 ;

tracing_map_cmp_fn_t tracing_map_cmp_num(int field_size,
      int field_is_signed)
{
 tracing_map_cmp_fn_t fn = tracing_map_cmp_none;

 switch (field_size) {
 case 8:
  if (field_is_signed)
   fn = tracing_map_cmp_s64;
  else
   fn = tracing_map_cmp_u64;
  break;
 case 4:
  if (field_is_signed)
   fn = tracing_map_cmp_s32;
  else
   fn = tracing_map_cmp_u32;
  break;
 case 2:
  if (field_is_signed)
   fn = tracing_map_cmp_s16;
  else
   fn = tracing_map_cmp_u16;
  break;
 case 1:
  if (field_is_signed)
   fn = tracing_map_cmp_s8;
  else
   fn = tracing_map_cmp_u8;
  break;
 }

 return fn;
}
