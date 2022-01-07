
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int export; scalar_t__ kernel; scalar_t__ vmlinux; scalar_t__ preloaded; struct module* module; } ;
struct module {int name; } ;
typedef enum export { ____Placeholder_export } export ;


 struct symbol* find_symbol (char const*) ;
 scalar_t__ is_vmlinux (int ) ;
 struct symbol* new_symbol (char const*,struct module*,int) ;
 int warn (char*,int ,char const*,int ,char*) ;

__attribute__((used)) static struct symbol *sym_add_exported(const char *name, struct module *mod,
           enum export export)
{
 struct symbol *s = find_symbol(name);

 if (!s) {
  s = new_symbol(name, mod, export);
 } else {
  if (!s->preloaded) {
   warn("%s: '%s' exported twice. Previous export was in %s%s\n",
        mod->name, name, s->module->name,
        is_vmlinux(s->module->name) ? "" : ".ko");
  } else {

   s->module = mod;
  }
 }
 s->preloaded = 0;
 s->vmlinux = is_vmlinux(mod->name);
 s->kernel = 0;
 s->export = export;
 return s;
}
