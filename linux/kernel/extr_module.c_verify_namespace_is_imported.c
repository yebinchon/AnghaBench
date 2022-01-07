
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int name; } ;
struct load_info {int dummy; } ;
struct kernel_symbol {int dummy; } ;


 int EINVAL ;
 char* get_modinfo (struct load_info const*,char*) ;
 char* get_next_modinfo (struct load_info const*,char*,char*) ;
 int kernel_symbol_name (struct kernel_symbol const*) ;
 char* kernel_symbol_namespace (struct kernel_symbol const*) ;
 int pr_err (char*,int ,int ,char const*) ;
 int pr_warn (int ) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int verify_namespace_is_imported(const struct load_info *info,
     const struct kernel_symbol *sym,
     struct module *mod)
{
 const char *namespace;
 char *imported_namespace;

 namespace = kernel_symbol_namespace(sym);
 if (namespace) {
  imported_namespace = get_modinfo(info, "import_ns");
  while (imported_namespace) {
   if (strcmp(namespace, imported_namespace) == 0)
    return 0;
   imported_namespace = get_next_modinfo(
    info, "import_ns", imported_namespace);
  }



  pr_err(

   "%s: module uses symbol (%s) from namespace %s, but does not import it.\n",
   mod->name, kernel_symbol_name(sym), namespace);

  return -EINVAL;

 }
 return 0;
}
