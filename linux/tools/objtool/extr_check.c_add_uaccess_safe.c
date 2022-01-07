
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int uaccess_safe; } ;
struct objtool_file {int elf; } ;


 struct symbol* find_symbol_by_name (int ,char const*) ;
 int uaccess ;
 char** uaccess_safe_builtin ;

__attribute__((used)) static void add_uaccess_safe(struct objtool_file *file)
{
 struct symbol *func;
 const char **name;

 if (!uaccess)
  return;

 for (name = uaccess_safe_builtin; *name; name++) {
  func = find_symbol_by_name(file->elf, *name);
  if (!func)
   continue;

  func->uaccess_safe = 1;
 }
}
