
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u_max ;
typedef unsigned long u64 ;
struct type_descriptor {int dummy; } ;


 scalar_t__ is_inline_int (struct type_descriptor*) ;
 int type_bit_width (struct type_descriptor*) ;

__attribute__((used)) static u_max get_unsigned_val(struct type_descriptor *type, void *val)
{
 if (is_inline_int(type))
  return (unsigned long)val;

 if (type_bit_width(type) == 64)
  return *(u64 *)val;

 return *(u_max *)val;
}
