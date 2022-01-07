
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type_descriptor {int dummy; } ;


 int WARN_ON (int) ;
 unsigned int type_bit_width (struct type_descriptor*) ;
 int type_is_int (struct type_descriptor*) ;

__attribute__((used)) static bool is_inline_int(struct type_descriptor *type)
{
 unsigned inline_bits = sizeof(unsigned long)*8;
 unsigned bits = type_bit_width(type);

 WARN_ON(!type_is_int(type));

 return bits <= inline_bits;
}
