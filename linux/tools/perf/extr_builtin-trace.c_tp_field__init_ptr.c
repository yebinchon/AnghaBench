
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tp_field {int dummy; } ;
struct tep_format_field {int offset; } ;


 int __tp_field__init_ptr (struct tp_field*,int ) ;

__attribute__((used)) static int tp_field__init_ptr(struct tp_field *field, struct tep_format_field *format_field)
{
 return __tp_field__init_ptr(field, format_field->offset);
}
