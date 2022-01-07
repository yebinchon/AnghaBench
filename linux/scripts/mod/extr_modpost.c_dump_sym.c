
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {scalar_t__ kernel; scalar_t__ vmlinux; } ;


 int external_module ;

__attribute__((used)) static int dump_sym(struct symbol *sym)
{
 if (!external_module)
  return 1;
 if (sym->vmlinux || sym->kernel)
  return 0;
 return 1;
}
