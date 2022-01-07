
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type_descriptor {scalar_t__ type_kind; } ;


 scalar_t__ type_kind_int ;

__attribute__((used)) static bool type_is_int(struct type_descriptor *type)
{
 return type->type_kind == type_kind_int;
}
