
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tp_field {int offset; int pointer; } ;


 int tp_field__ptr ;

__attribute__((used)) static int __tp_field__init_ptr(struct tp_field *field, int offset)
{
 field->offset = offset;
 field->pointer = tp_field__ptr;
 return 0;
}
