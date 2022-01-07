
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int name; int export; int namespace; int weak; struct module* module; struct symbol* next; } ;
struct module {char* name; int gpl_compatible; int required_namespaces; struct symbol* unres; } ;


 int add_namespace (int *,int ) ;
 int check_for_gpl_usage (int ,char const*,int ) ;
 int check_for_unused (int ,char const*,int ) ;
 struct symbol* find_symbol (int ) ;
 scalar_t__ have_vmlinux ;
 int merror (char*,int ,char*) ;
 int module_imports_namespace (struct module*,int ) ;
 char* strrchr (char*,char) ;
 int warn (char*,char const*,char*,...) ;
 scalar_t__ warn_unresolved ;
 int write_namespace_deps ;

__attribute__((used)) static int check_exports(struct module *mod)
{
 struct symbol *s, *exp;
 int err = 0;

 for (s = mod->unres; s; s = s->next) {
  const char *basename;
  exp = find_symbol(s->name);
  if (!exp || exp->module == mod) {
   if (have_vmlinux && !s->weak) {
    if (warn_unresolved) {
     warn("\"%s\" [%s.ko] undefined!\n",
          s->name, mod->name);
    } else {
     merror("\"%s\" [%s.ko] undefined!\n",
            s->name, mod->name);
     err = 1;
    }
   }
   continue;
  }
  basename = strrchr(mod->name, '/');
  if (basename)
   basename++;
  else
   basename = mod->name;

  if (exp->namespace) {
   add_namespace(&mod->required_namespaces,
          exp->namespace);

   if (!write_namespace_deps &&
       !module_imports_namespace(mod, exp->namespace)) {
    warn("module %s uses symbol %s from namespace %s, but does not import it.\n",
         basename, exp->name, exp->namespace);
   }
  }

  if (!mod->gpl_compatible)
   check_for_gpl_usage(exp->export, basename, exp->name);
  check_for_unused(exp->export, basename, exp->name);
 }

 return err;
}
