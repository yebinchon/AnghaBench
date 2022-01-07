
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type_descriptor {int type_info; } ;



__attribute__((used)) static unsigned type_bit_width(struct type_descriptor *type)
{
 return 1 << (type->type_info >> 1);
}
