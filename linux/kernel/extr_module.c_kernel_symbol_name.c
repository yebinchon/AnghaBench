
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_symbol {char const* name; int name_offset; } ;


 char const* offset_to_ptr (int *) ;

__attribute__((used)) static const char *kernel_symbol_name(const struct kernel_symbol *sym)
{



 return sym->name;

}
