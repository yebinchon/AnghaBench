
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_symbol {unsigned long value; int value_offset; } ;


 scalar_t__ offset_to_ptr (int *) ;

__attribute__((used)) static unsigned long kernel_symbol_value(const struct kernel_symbol *sym)
{



 return sym->value;

}
