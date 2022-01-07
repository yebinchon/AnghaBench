
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tp_field {int dummy; } ;
struct tep_format_field {int offset; int size; } ;


 int __tp_field__init_uint (struct tp_field*,int ,int ,int) ;

__attribute__((used)) static int tp_field__init_uint(struct tp_field *field, struct tep_format_field *format_field, bool needs_swap)
{
 return __tp_field__init_uint(field, format_field->size, format_field->offset, needs_swap);
}
