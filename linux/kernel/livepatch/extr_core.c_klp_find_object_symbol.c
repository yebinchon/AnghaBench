
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct klp_find_arg {char const* objname; char const* name; unsigned long addr; int count; unsigned long pos; } ;


 int EINVAL ;
 int kallsyms_on_each_symbol (int ,struct klp_find_arg*) ;
 int klp_find_callback ;
 int module_kallsyms_on_each_symbol (int ,struct klp_find_arg*) ;
 int module_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*,...) ;

__attribute__((used)) static int klp_find_object_symbol(const char *objname, const char *name,
      unsigned long sympos, unsigned long *addr)
{
 struct klp_find_arg args = {
  .objname = objname,
  .name = name,
  .addr = 0,
  .count = 0,
  .pos = sympos,
 };

 mutex_lock(&module_mutex);
 if (objname)
  module_kallsyms_on_each_symbol(klp_find_callback, &args);
 else
  kallsyms_on_each_symbol(klp_find_callback, &args);
 mutex_unlock(&module_mutex);





 if (args.addr == 0)
  pr_err("symbol '%s' not found in symbol table\n", name);
 else if (args.count > 1 && sympos == 0) {
  pr_err("unresolvable ambiguity for symbol '%s' in object '%s'\n",
         name, objname);
 } else if (sympos != args.count && sympos > 0) {
  pr_err("symbol position %lu for symbol '%s' in object '%s' not found\n",
         sympos, name, objname ? objname : "vmlinux");
 } else {
  *addr = args.addr;
  return 0;
 }

 *addr = 0;
 return -EINVAL;
}
