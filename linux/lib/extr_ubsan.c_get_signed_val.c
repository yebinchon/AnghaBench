
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type_descriptor {int dummy; } ;
typedef unsigned int s_max ;
typedef unsigned int s64 ;


 scalar_t__ is_inline_int (struct type_descriptor*) ;
 int type_bit_width (struct type_descriptor*) ;

__attribute__((used)) static s_max get_signed_val(struct type_descriptor *type, void *val)
{
 if (is_inline_int(type)) {
  unsigned extra_bits = sizeof(s_max)*8 - type_bit_width(type);
  unsigned long ulong_val = (unsigned long)val;

  return ((s_max)ulong_val) << extra_bits >> extra_bits;
 }

 if (type_bit_width(type) == 64)
  return *(s64 *)val;

 return *(s_max *)val;
}
