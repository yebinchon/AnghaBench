
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type_descriptor {int type_info; } ;


 int WARN_ON (int) ;
 int type_is_int (struct type_descriptor*) ;

__attribute__((used)) static bool type_is_signed(struct type_descriptor *type)
{
 WARN_ON(!type_is_int(type));
 return type->type_info & 1;
}
