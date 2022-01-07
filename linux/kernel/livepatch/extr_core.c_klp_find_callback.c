
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {char const* name; } ;
struct klp_find_arg {unsigned long addr; int count; int pos; scalar_t__ objname; scalar_t__ name; } ;


 scalar_t__ strcmp (scalar_t__,char const*) ;

__attribute__((used)) static int klp_find_callback(void *data, const char *name,
        struct module *mod, unsigned long addr)
{
 struct klp_find_arg *args = data;

 if ((mod && !args->objname) || (!mod && args->objname))
  return 0;

 if (strcmp(args->name, name))
  return 0;

 if (args->objname && strcmp(args->objname, mod->name))
  return 0;

 args->addr = addr;
 args->count++;





 if ((args->pos && (args->count == args->pos)) ||
     (!args->pos && (args->count > 1)))
  return 1;

 return 0;
}
