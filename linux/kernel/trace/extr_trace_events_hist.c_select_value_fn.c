
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * hist_field_fn_t ;


 int * hist_field_s16 ;
 int * hist_field_s32 ;
 int * hist_field_s64 ;
 int * hist_field_s8 ;
 int * hist_field_u16 ;
 int * hist_field_u32 ;
 int * hist_field_u64 ;
 int * hist_field_u8 ;

__attribute__((used)) static hist_field_fn_t select_value_fn(int field_size, int field_is_signed)
{
 hist_field_fn_t fn = ((void*)0);

 switch (field_size) {
 case 8:
  if (field_is_signed)
   fn = hist_field_s64;
  else
   fn = hist_field_u64;
  break;
 case 4:
  if (field_is_signed)
   fn = hist_field_s32;
  else
   fn = hist_field_u32;
  break;
 case 2:
  if (field_is_signed)
   fn = hist_field_s16;
  else
   fn = hist_field_u16;
  break;
 case 1:
  if (field_is_signed)
   fn = hist_field_s8;
  else
   fn = hist_field_u8;
  break;
 }

 return fn;
}
