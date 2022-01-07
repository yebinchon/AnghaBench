
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tp_field {int offset; int integer; } ;


 int tp_field__swapped_u16 ;
 int tp_field__swapped_u32 ;
 int tp_field__swapped_u64 ;
 int tp_field__u16 ;
 int tp_field__u32 ;
 int tp_field__u64 ;
 int tp_field__u8 ;

__attribute__((used)) static int __tp_field__init_uint(struct tp_field *field, int size, int offset, bool needs_swap)
{
 field->offset = offset;

 switch (size) {
 case 1:
  field->integer = tp_field__u8;
  break;
 case 2:
  field->integer = needs_swap ? tp_field__swapped_u16 : tp_field__u16;
  break;
 case 4:
  field->integer = needs_swap ? tp_field__swapped_u32 : tp_field__u32;
  break;
 case 8:
  field->integer = needs_swap ? tp_field__swapped_u64 : tp_field__u64;
  break;
 default:
  return -1;
 }

 return 0;
}
